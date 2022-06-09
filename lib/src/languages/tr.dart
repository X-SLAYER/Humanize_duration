import 'package:humanize_duration/src/humanize_language.dart';

/// Turkish
class TrLanguage implements HumanizeLanguage {
  const TrLanguage();

  @override
  String name() => 'tr';

  @override
  String day(int value) => 'gün';

  @override
  String hour(int value) => 'saat';

  @override
  String millisecond(int value) => 'milisaniye';

  @override
  String minute(int value) => 'dakika';

  @override
  String month(int value) => 'ay';

  @override
  String second(int value) => 'saniye';

  @override
  String week(int value) => 'hafta';

  @override
  String year(int value) => 'yıl';
}
