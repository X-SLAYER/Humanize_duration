import 'package:humanize_duration/src/humanize_language.dart';

/// Farsi/Persian
class FaLanguage implements HumanizeLanguage {
  const FaLanguage();

  @override
  String name() => 'fa';

  @override
  String day(int value) => 'روز';

  @override
  String hour(int value) => 'ساعت';

  @override
  String millisecond(int value) => 'میلی ثانیه';

  @override
  String minute(int value) => 'دقیقه';

  @override
  String month(int value) => 'ماه';

  @override
  String second(int value) => 'ثانیه';

  @override
  String week(int value) => 'هفته';

  @override
  String year(int value) => 'سال';
}
