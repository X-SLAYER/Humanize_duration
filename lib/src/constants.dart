import 'package:humanize_duration/humanize_duration.dart';

const arabicDigits = ["۰", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"];

const Map<Units, int> unitMeasures = {
  Units.year: 31557600000,
  Units.month: 2629800000,
  Units.week: 604800000,
  Units.day: 86400000,
  Units.hour: 3600000,
  Units.minute: 60000,
  Units.second: 1000,
  Units.millisecond: 1
};

/// Get the supported languages
///
/// Returns a list of supported languages
const Map<String, HumanizeLanguage> supportedLanguages = {
  'ar': ArLanguage(),
  'en': EnLanguage(),
  'fr': FrLanguage(),
  'es': EsLanguage(),
  'jp': JpLanguage(),
  'gr': GrLanguage(),
  'du': DuLanguage(),
  'fa': FaLanguage(),
  'ge': GeLanguage(),
  'it': ItLanguage(),
  'ko': KoLanguage(),
  'pt': PtLanguage(),
  'ru': RuLanguage(),
  'tr': TrLanguage(),
  'zh_cn': ZhCnLanguage(),
  'zh_tw': ZhTwLanguage(),
};
