import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:per_rat/data/client/api_exception.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';

/// Fake network: returns [body] while [online] is true, otherwise fails the
/// way an unreachable server does (connection timeout).
class _FakeAdapter implements HttpClientAdapter {
  bool online = true;
  int calls = 0;
  final String body = jsonEncode({'data': [], 'marker': 'from-network'});

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    calls++;
    if (!online) {
      throw DioException.connectionTimeout(
        timeout: const Duration(seconds: 5),
        requestOptions: options,
      );
    }
    return ResponseBody.fromString(body, 200, headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    });
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  group('JikanService cache', () {
    test('serves the last good response when the API is unreachable',
        () async {
      final service = JikanService();
      final adapter = _FakeAdapter();
      service.dio.httpClientAdapter = adapter;

      final first = await service.dio.get('/seasons/now');
      expect(first.data['marker'], 'from-network');

      adapter.online = false;
      final second = await service.dio.get('/seasons/now');

      expect(second.statusCode, 200);
      expect(second.data['marker'], 'from-network');
      expect(adapter.calls, 2, reason: 'network is still tried first');
    });

    test('cache is shared between JikanService instances', () async {
      final a = JikanService();
      final adapterA = _FakeAdapter();
      a.dio.httpClientAdapter = adapterA;
      await a.dio.get('/top/anime', queryParameters: {'filter': 'airing'});

      final b = JikanService();
      b.dio.httpClientAdapter = _FakeAdapter()..online = false;
      final res =
          await b.dio.get('/top/anime', queryParameters: {'filter': 'airing'});
      expect(res.data['marker'], 'from-network');
    });

    test('still fails when nothing was cached yet', () async {
      final service = JikanService();
      service.dio.httpClientAdapter = _FakeAdapter()..online = false;

      expect(
        () => service.dio.get('/never/cached'),
        throwsA(isA<DioException>()),
      );
    });
  });

  group('friendly errors', () {
    test('repository throws a readable ApiException on timeout', () async {
      final service = JikanService();
      service.dio.httpClientAdapter = _FakeAdapter()..online = false;
      final repo = AnimeRepository(service);

      await expectLater(
        repo.fetchTopAnime(filter: 'never-cached'),
        throwsA(
          isA<ApiException>().having(
            (e) => e.toString(),
            'toString',
            allOf(
              contains("Couldn't reach the anime server"),
              isNot(contains('DioException')),
              isNot(contains('RequestOptions')),
            ),
          ),
        ),
      );
    });

    RequestOptions ro() => RequestOptions(path: '/x');
    Response res(int code) => Response(requestOptions: ro(), statusCode: code);

    test('maps HTTP status codes', () {
      expect(
        ApiException.from(DioException.badResponse(
                statusCode: 503, requestOptions: ro(), response: res(503)))
            .message,
        contains('having problems'),
      );
      expect(
        ApiException.from(DioException.badResponse(
                statusCode: 429, requestOptions: ro(), response: res(429)))
            .message,
        contains('Too many requests'),
      );
      expect(
        ApiException.from(DioException.badResponse(
                statusCode: 404, requestOptions: ro(), response: res(404)))
            .message,
        contains("couldn't find"),
      );
    });

    test('unknown errors get a generic message', () {
      expect(ApiException.from(const FormatException('bad json')).message,
          contains('Something went wrong'));
    });
  });
}
