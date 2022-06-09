import 'package:humanize_duration/src/humanize_language.dart';

/// Korean
class KoLanguage implements HumanizeLanguage {
  const KoLanguage();

  @override
  String name() => 'ko';

  @override
  String day(int value) => '일';

  @override
  String hour(int value) => '시간';

  @override
  String millisecond(int value) => '밀리 초';

  @override
  String minute(int value) => '분';

  @override
  String month(int value) => '개월';

  @override
  String second(int value) => '초';

  @override
  String week(int value) => '주일';

  @override
  String year(int value) => '년';
}
