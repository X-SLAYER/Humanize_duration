import 'package:humanize_duration/src/humanize_language.dart';

class EsLanguage implements HumanLanguage {
  const EsLanguage();

  @override
  String name() => 'es';

  @override
  String day(int value) => 'día${value == 1 ? '' : 's'}';

  @override
  String hour(int value) => 'hora${value == 1 ? '' : 's'}';

  @override
  String millisecond(int value) => 'milisegundo${value == 1 ? '' : 's'}';

  @override
  String minute(int value) => 'minuto${value == 1 ? '' : 's'}';

  @override
  String month(int value) => 'mes${value == 1 ? '' : 'es'}';

  @override
  String second(int value) => 'segundo${value == 1 ? '' : 's'}';

  @override
  String week(int value) => 'semana${value == 1 ? '' : 's'}';

  @override
  String year(int value) => 'año${value == 1 ? '' : 's'}';
}
