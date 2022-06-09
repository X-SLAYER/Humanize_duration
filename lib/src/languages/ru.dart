import 'package:humanize_duration/src/humanize_language.dart';
import 'package:humanize_duration/src/languages/languages_utils.dart';

/// Russian
class RuLanguage implements HumanizeLanguage {
  const RuLanguage();

  @override
  String name() => 'ru';

  @override
  String day(int value) => ["дней", "день", "дня"][getSlavicForm(value)];

  @override
  String hour(int value) => ["часов", "час", "часа"][getSlavicForm(value)];

  @override
  String millisecond(int value) =>
      ["миллисекунд", "миллисекунда", "миллисекунды"][getSlavicForm(value)];

  @override
  String minute(int value) =>
      ["минут", "минута", "минуты"][getSlavicForm(value)];

  @override
  String month(int value) =>
      ["месяцев", "месяц", "месяца"][getSlavicForm(value)];

  @override
  String second(int value) =>
      ["секунд", "секунда", "секунды"][getSlavicForm(value)];

  @override
  String week(int value) =>
      ["недель", "неделя", "недели"][getSlavicForm(value)];

  @override
  String year(int value) => ["лет", "год", "года"][getSlavicForm(value)];
}
