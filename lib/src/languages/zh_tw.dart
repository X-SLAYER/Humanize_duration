import 'package:humanize_duration/src/humanize_language.dart';

/// Chinese, traditional
class ZhTwLanguage implements HumanizeLanguage {
  const ZhTwLanguage();

  @override
  String name() => 'zh_TW';

  @override
  String day(int value) => '天';

  @override
  String hour(int value) => '小時';

  @override
  String millisecond(int value) => '毫秒';

  @override
  String minute(int value) => '分鐘';

  @override
  String month(int value) => '個月';

  @override
  String second(int value) => '秒';

  @override
  String week(int value) => '周';

  @override
  String year(int value) => '年';
}
