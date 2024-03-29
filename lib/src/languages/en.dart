import 'package:humanize_duration/src/humanize_language.dart';

/// English
class EnLanguage implements HumanizeLanguage {
  const EnLanguage();

  @override
  String name() => 'en';

  @override
  String day(int value) => 'day${value == 1 ? '' : 's'}';

  @override
  String hour(int value) => 'hour${value == 1 ? '' : 's'}';

  @override
  String millisecond(int value) => 'millisecond${value == 1 ? '' : 's'}';

  @override
  String minute(int value) => 'minute${value == 1 ? '' : 's'}';

  @override
  String month(int value) => 'month${value == 1 ? '' : 's'}';

  @override
  String second(int value) => 'second${value == 1 ? '' : 's'}';

  @override
  String week(int value) => 'week${value == 1 ? '' : 's'}';

  @override
  String year(int value) => 'year${value == 1 ? '' : 's'}';
}
