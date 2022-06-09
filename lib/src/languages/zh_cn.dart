import 'package:humanize_duration/src/humanize_language.dart';

/// Chinese, simplified
class ZhCnLanguage implements HumanizeLanguage {
  const ZhCnLanguage();

  @override
  String name() => 'zh_CN';

  @override
  String day(int value) => '天';

  @override
  String hour(int value) => '小时';

  @override
  String millisecond(int value) => '毫秒';

  @override
  String minute(int value) => '分钟';

  @override
  String month(int value) => '个月';

  @override
  String second(int value) => '秒';

  @override
  String week(int value) => '周';

  @override
  String year(int value) => '年';
}
