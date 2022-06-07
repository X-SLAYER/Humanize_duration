import 'package:humanize_duration/src/humanize_language.dart';

class JpLanguage implements HumanLanguage {
  const JpLanguage();

  @override
  String name() => 'jp';

  @override
  String day(int value) => '日';

  @override
  String hour(int value) => '時間';

  @override
  String millisecond(int value) => 'ミリ秒';

  @override
  String minute(int value) => '分';

  @override
  String month(int value) => 'ヶ月';

  @override
  String second(int value) => '秒';

  @override
  String week(int value) => '週';

  @override
  String year(int value) => '年';
}
