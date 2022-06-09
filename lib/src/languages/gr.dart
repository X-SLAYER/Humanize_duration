import 'package:humanize_duration/src/humanize_language.dart';

/// Greek
class GrLanguage implements HumanizeLanguage {
  const GrLanguage();

  @override
  String name() => 'gr';

  @override
  String day(int value) => value == 1 ? 'μέρα' : 'μέρες';

  @override
  String hour(int value) => value == 1 ? 'ώρα' : 'ώρες';

  @override
  String millisecond(int value) =>
      '${value == 1 ? "χιλιοστό" : "χιλιοστά"} του δευτερολέπτου';

  @override
  String minute(int value) => value == 1 ? 'λεπτό' : 'λεπτά';

  @override
  String month(int value) => value == 1 ? 'μήνας' : 'μήνες';

  @override
  String second(int value) => value == 1 ? 'δευτερόλεπτο' : 'δευτερόλεπτα';

  @override
  String week(int value) => value == 1 ? 'εβδομάδα' : 'εβδομάδες';

  @override
  String year(int value) => value == 1 ? 'χρόνος' : 'χρόνια';
}
