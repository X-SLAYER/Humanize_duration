import 'package:humanize_duration/src/humanize_language.dart';

/// Portuguese
class PtLanguage implements HumanizeLanguage {
  const PtLanguage();

  @override
  String name() => 'pt';

  @override
  String day(int value) => 'dia${value == 1 ? '' : 's'}';

  @override
  String hour(int value) => 'hora${value == 1 ? '' : 's'}';

  @override
  String millisecond(int value) => 'milissegundo${value == 1 ? '' : 's'}';

  @override
  String minute(int value) => 'minuto${value == 1 ? '' : 's'}';

  @override
  String month(int value) => value == 1 ? "mês" : "meses";

  @override
  String second(int value) => 'segundo${value == 1 ? '' : 's'}';

  @override
  String week(int value) => 'semana${value == 1 ? '' : 's'}';

  @override
  String year(int value) => 'ano${value == 1 ? '' : 's'}';
}
