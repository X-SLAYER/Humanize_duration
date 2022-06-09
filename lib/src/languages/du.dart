import 'package:humanize_duration/src/humanize_language.dart';

/// Dutch
class DuLanguage implements HumanizeLanguage {
  const DuLanguage();

  @override
  String name() => 'nl';

  @override
  String day(int value) => value == 1 ? 'dag' : 'dagen';

  @override
  String hour(int value) => 'uur';

  @override
  String millisecond(int value) =>
      value == 1 ? 'milliseconde' : 'milliseconden';

  @override
  String minute(int value) => value == 1 ? 'minuut' : 'minuten';

  @override
  String month(int value) => value == 1 ? 'maand' : 'maanden';

  @override
  String second(int value) => value == 1 ? 'seconde' : 'seconden';

  @override
  String week(int value) => value == 1 ? 'week' : 'weken';

  @override
  String year(int value) => 'jaar';
}
