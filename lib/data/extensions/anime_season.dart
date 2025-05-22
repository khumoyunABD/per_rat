/// Define anime seasons enum
enum AnimeSeason {
  winter,
  spring,
  summer,
  fall;

  // Get the string representation for API
  String get value => toString().split('.').last;

  // Get the next season
  AnimeSeason get next => AnimeSeason.values[(index + 1) % 4];

  // Get the previous season
  AnimeSeason get previous => AnimeSeason.values[(index - 1 + 4) % 4];
}

/// Season determination extension
extension DateTimeSeasonExtension on DateTime {
  AnimeSeason get animeSeason {
    switch (month) {
      case 1:
      case 2:
      case 3:
        return AnimeSeason.winter;
      case 4:
      case 5:
      case 6:
        return AnimeSeason.spring;
      case 7:
      case 8:
      case 9:
        return AnimeSeason.summer;
      case 10:
      case 11:
      case 12:
      default:
        return AnimeSeason.fall;
    }
  }
}
