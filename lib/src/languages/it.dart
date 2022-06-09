import 'package:humanize_duration/src/humanize_language.dart';

/// Italian
class ItLanguage implements HumanizeLanguage {
  const ItLanguage();

  @override
  String name() => 'it';

  @override
  String day(int value) => 'giorn${value == 1 ? 'o' : 'i'}';

  @override
  String hour(int value) => 'or${value == 1 ? 'a' : 'e'}';

  @override
  String millisecond(int value) => 'millisecond${value == 1 ? 'o' : 'i'}';

  @override
  String minute(int value) => 'minut${value == 1 ? 'o' : 'i'}';

  @override
  String month(int value) => 'mes${value == 1 ? 'e' : 'i'}';

  @override
  String second(int value) => 'second${value == 1 ? 'o' : 'i'}';

  @override
  String week(int value) => 'settiman${value == 1 ? 'a' : 'e'}';

  @override
  String year(int value) => 'ann${value == 1 ? 'o' : 'i'}';
}
