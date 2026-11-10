import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

/// A user-facing API failure.
///
/// [toString] returns only [message], so blocs that emit `e.toString()`
/// show a readable sentence instead of a raw Dio stack/description.
class ApiException implements Exception {
  const ApiException(this.message, {this.cause});

  /// Short, human-readable text that is safe to show in the UI.
  final String message;

  /// The original error, kept for logging/debugging.
  final Object? cause;

  static const _unreachable =
      "Couldn't reach the anime server. Check your connection or try again later.";
  static const _serverDown =
      'The anime server is having problems right now. Please try again later.';
  static const _rateLimited =
      'Too many requests. Please wait a moment and try again.';
  static const _notFound = "We couldn't find that anime.";
  static const _generic = 'Something went wrong while loading anime. Please try again.';

  /// Maps any error thrown while talking to the anime API to an [ApiException].
  factory ApiException.from(Object error) {
    if (error is ApiException) return error;
    if (error is DioException) return ApiException.fromDio(error);
    if (error is SocketException ||
        error is TimeoutException ||
        error is HttpException) {
      return ApiException(_unreachable, cause: error);
    }
    return ApiException(_generic, cause: error);
  }

  factory ApiException.fromDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return ApiException(_unreachable, cause: e);
      case DioExceptionType.badResponse:
        final status = e.response?.statusCode ?? 0;
        if (status == 404) return ApiException(_notFound, cause: e);
        if (status == 429) return ApiException(_rateLimited, cause: e);
        if (status >= 500) return ApiException(_serverDown, cause: e);
        return ApiException(_generic, cause: e);
      case DioExceptionType.unknown:
        if (e.error is SocketException || e.error is HttpException) {
          return ApiException(_unreachable, cause: e);
        }
        return ApiException(_generic, cause: e);
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
        return ApiException(_generic, cause: e);
    }
  }

  @override
  String toString() => message;
}
