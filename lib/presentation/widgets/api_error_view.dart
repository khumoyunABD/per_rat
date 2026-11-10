import 'package:flutter/material.dart';

/// Friendly error state for screens that load data from the anime API.
class ApiErrorView extends StatelessWidget {
  const ApiErrorView({
    super.key,
    required this.message,
    this.onRetry,
    this.compact = false,
  });

  /// Readable message (see `ApiException`).
  final String message;

  /// Shows a "Try again" button when provided.
  final VoidCallback? onRetry;

  /// Smaller layout for use inside a horizontal list / fixed-height section.
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: compact ? 8 : 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              size: compact ? 36 : 56,
              color: Colors.white54,
            ),
            SizedBox(height: compact ? 8 : 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70, fontSize: 15),
            ),
            if (onRetry != null) ...[
              SizedBox(height: compact ? 8 : 20),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Try again'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
