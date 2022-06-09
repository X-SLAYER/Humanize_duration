import 'package:humanize_duration/src/humanize_language.dart';

/// German
class GeLanguage implements HumanizeLanguage {
  const GeLanguage();

  @override
  String name() => 'ge';

  @override
  String day(int value) => 'Tag${value == 1 ? '' : 'e'}';

  @override
  String hour(int value) => 'Stunde${value == 1 ? '' : 'n'}';

  @override
  String millisecond(int value) => 'Millisekunde${value == 1 ? '' : 'n'}';

  @override
  String minute(int value) => 'Minute${value == 1 ? '' : 'n'}';

  @override
  String month(int value) => 'Monat${value == 1 ? '' : 'e'}';

  @override
  String second(int value) => 'Sekunde${value == 1 ? '' : 'n'}';

  @override
  String week(int value) => 'Woche${value == 1 ? '' : 'e'}';

  @override
  String year(int value) => 'Jahr${value == 1 ? '' : 'e'}';
}
