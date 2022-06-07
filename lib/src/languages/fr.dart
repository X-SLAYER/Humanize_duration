import 'package:humanize_duration/src/humanize_language.dart';

class FrLanguage implements HumanizeLanguage {
  const FrLanguage();

  @override
  String name() => 'fr';

  @override
  String day(int value) => 'jour${value == 1 ? '' : 's'}';

  @override
  String hour(int value) => 'heure${value == 1 ? '' : 's'}';

  @override
  String millisecond(int value) => 'milliseconde${value == 1 ? '' : 's'}';

  @override
  String minute(int value) => 'minute${value == 1 ? '' : 's'}';

  @override
  String month(int value) => 'mois';

  @override
  String second(int value) => 'seconde${value == 1 ? '' : 's'}';

  @override
  String week(int value) => 'semaine${value == 1 ? '' : 's'}';

  @override
  String year(int value) => 'an${value == 1 ? '' : 's'}';
}
