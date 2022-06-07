library humanize_duration;

enum Units { year, month, week, day, hour, minute, second, millisecond }

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
  final List<Units> units;

  /// String to display between each value and unit.
  final String spacer;

  /// String to display between the previous unit and the next value.
  final String delimiter;

  /// String to include before the final unit.
  /// You can also set `lastPrefixComma` to `false` to eliminate the final comma.
  final String? conjunction;

  /// the comma set before the last value.
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

  _HumanizePiece(
    this.unitName,
    this.unitCount,
  );

  String format(String spacer) {
    return '$unitCount$spacer${unitName.name}';
  }
}

/// By default, Humanize Duration will humanize down to the millisecond.
/// It will humanize in English by default.
/// For example,
/// humanizeDuration(const Duration(milliseconds: 3000)); // '3 seconds'
/// humanizeDuration(const Duration(milliseconds: 97320000)); // '1 day, 3 hours, 2 minutes'
///
/// --Options
/// You can change the settings by passing options as the second argument:
///
String humanizeDuration(
  Duration duration, {
  HumanizeOptions options = const HumanizeOptions(),
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
    pieces.add(_HumanizePiece(unitName, unitCount));
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
