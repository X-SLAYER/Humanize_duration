import 'package:humanize_duration/src/languages/humanize_language.dart';

class FrLanguage implements HumanLanguage {
  const FrLanguage();

  @override
  String name() => 'fr';

  @override
  String day(int value) => 'jour${value >= 2 ? '' : 's'}';

  @override
  String hour(int value) => 'heure${value >= 2 ? '' : 's'}';

  @override
  String millisecond(int value) => 'milliseconde${value >= 2 ? '' : 's'}';

  @override
  String minute(int value) => 'minute${value >= 2 ? '' : 's'}';

  @override
  String month(int value) => 'mois';

  @override
  String second(int value) => 'seconde${value >= 2 ? '' : 's'}';

  @override
  String week(int value) => 'semaine${value >= 2 ? '' : 's'}';

  @override
  String year(int value) => 'an${value >= 2 ? '' : 's'}';
}
