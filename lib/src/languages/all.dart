import 'package:humanize_duration/humanize_duration.dart';
import 'package:humanize_duration/src/constants.dart';

export './ar.dart';
export './en.dart';
export './fr.dart';
export './es.dart';
export './jp.dart';
export './gr.dart';
export './du.dart';
export './fa.dart';
export './ge.dart';
export './it.dart';
export './ko.dart';
export './pt.dart';
export './ru.dart';
export './tr.dart';
export './zh_cn.dart';
export './zh_tw.dart';

/// get language directly by alpha2
/// Ex: ar, en , es , fr ....
HumanizeLanguage getLanguageByLocale(String local) =>
    supportedLanguages[local] ?? const EnLanguage();

/// list all the supported languages
List<String> getSupportedLanguages() => supportedLanguages.keys.toList();
