import 'package:humanize_duration/humanize_duration.dart';

class EuLanguage implements HumanizeLanguage {
  const EuLanguage();

  @override
  String name() => 'eu';

  @override
  String day(int value) => 'egun';

  @override
  String hour(int value) => 'ordu';

  @override
  String millisecond(int value) => 'milisegundo';

  @override
  String minute(int value) => 'minutu';

  @override
  String month(int value) => 'hilabete';

  @override
  String second(int value) => 'segundo';

  @override
  String week(int value) => 'aste';

  @override
  String year(int value) => 'hilabete';
}
