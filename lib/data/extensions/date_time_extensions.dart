// Helper extension to safely compare dates
extension DateTimeExtension on DateTime? {
  bool isSafelyBefore(DateTime? other) {
    if (this == null || other == null) return false;
    return this!.isBefore(other);
  }

  bool isSafelyAfter(DateTime? other) {
    if (this == null || other == null) return false;
    return this!.isAfter(other);
  }

  bool isSafelySameMoment(DateTime? other) {
    if (this == null || other == null) return false;
    return this!.isAtSameMomentAs(other);
  }
}
