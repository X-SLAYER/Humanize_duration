import 'package:humanize_duration/src/humanize_language.dart';

import 'languages/en.dart';

enum Units { year, month, week, day, hour, minute, second, millisecond }

const arabicDigits = ["۰", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"];

const Map<Units, int> _unitMeasures = {
  Units.year: 31557600000,
  Units.month: 2629800000,
  Units.week: 604800000,
  Units.day: 86400000,
  Units.hour: 3600000,
  Units.minute: 60000,
  Units.second: 1000,
  Units.millisecond: 1
};

class HumanizeOptions {
  /// List of units to use.
  /// It can be one, or a combination of any, of the following
  /// `Units.year`, `Units.month`, `Units.week`, `Units.day`, `Units.hour`, `Units.minute`, `Units.second`, `Units.millisecond`.
  final List<Units> units;

  /// String to display between each value and unit.
  final String spacer;

  /// String to display between the previous unit and the next value.
  final String delimiter;

  /// String to include before the final unit.
  /// You can also set `lastPrefixComma` to `false` to eliminate the final comma.
  final String? conjunction;

  /// The comma set before the last value.
  final bool lastPrefixComma;

  const HumanizeOptions({
    this.units = Units.values,
    this.spacer = ' ',
    this.delimiter = ', ',
    this.conjunction,
    this.lastPrefixComma = false,
  });
}

class _HumanizePiece {
  final Units unitName;
  final int unitCount;
  final HumanizeLanguage language;

  _HumanizePiece(this.unitName, this.unitCount, this.language);

  String format(String spacer) {
    if (language.name().toLowerCase() == 'ar') {
      return '${_toArabicDigits(unitCount.toString())}$spacer$unitLanguage';
    }
    return '$unitCount$spacer$unitLanguage';
  }

  String get unitLanguage {
    switch (unitName) {
      case Units.day:
        return language.day(unitCount);
      case Units.hour:
        return language.hour(unitCount);
      case Units.minute:
        return language.minute(unitCount);
      case Units.second:
        return language.second(unitCount);
      case Units.millisecond:
        return language.millisecond(unitCount);
      case Units.year:
        return language.year(unitCount);
      case Units.month:
        return language.month(unitCount);
      case Units.week:
        return language.week(unitCount);
      default:
        throw Exception('Unknown unit name: $unitName');
    }
  }

  String _toArabicDigits(String digit) {
    var character = '';
    for (var i = 0; i < digit.length; i++) {
      character += arabicDigits[int.parse(digit[i])];
    }
    return character;
  }
}

/// By default, Humanize Duration will humanize down to the millisecond.
/// It will humanize in English by default.
/// For example,
/// ```dart
/// humanizeDuration(const Duration(milliseconds: 3000)); // '3 seconds'
/// humanizeDuration(const Duration(milliseconds: 97320000)); // '1 day, 3 hours, 2 minutes'
/// ```
///
/// -- Options and languages
/// You can change the settings and languages :
/// Supported languages: [EnLanguage, EsLanguage, FrLanguage, JpLanguage, ArLanguage]
/// `English` , `Spanish` , `French` , `Arabic` , `Japanese`
///
///  ```dart
/// humanizeDuration(
///  const Duration(milliseconds: 97320000),
///  language: const ArLanguage(),
///  options: const HumanizeOptions(
///    conjunction: ' و ',
///    units: [Units.day, Units.hour],
///    // delimiter: ' -- ',
///    // lastPrefixComma: false,
///    // spacer: ' Whole'
///  ),
///);
/// ```
///
String humanizeDuration(
  Duration duration, {
  HumanizeOptions options = const HumanizeOptions(),
  HumanizeLanguage language = const EnLanguage(),
}) {
  int i, len;
  len = options.units.length;

  var ms = duration.inMilliseconds.abs();

  List<_HumanizePiece> pieces = [];
  Units unitName;
  int unitMS, unitCount;

  for (i = 0; i < len; i++) {
    unitName = options.units[i];
    unitMS = _unitMeasures[unitName]!;
    unitCount = (ms / unitMS).floor();
    pieces.add(_HumanizePiece(unitName, unitCount, language));
    ms -= unitCount * unitMS;
  }

  pieces.removeWhere((e) => e.unitCount <= 0);
  final result = pieces.map((e) => e.format(options.spacer)).toList();
  if (options.conjunction == null || result.length == 1) {
    return result.join(options.delimiter);
  }
  if (result.length == 2) {
    return result.join(options.conjunction!);
  } else {
    return '${result.sublist(0, result.length - 1).join(options.delimiter)}${(options.lastPrefixComma ? "," : "")}${options.conjunction!}${result.last}';
  }
}
