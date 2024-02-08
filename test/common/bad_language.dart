import 'package:humanize_duration/src/humanize_language.dart';

class BadLanguage extends HumanizeLanguage {
  @override
  String name() => "bad language";

  @override
  String day(int value) => throw UnimplementedError();

  @override
  String hour(int value) => throw UnimplementedError();

  @override
  String millisecond(int value) => throw UnimplementedError();

  @override
  String minute(int value) => throw UnimplementedError();

  @override
  String month(int value) => throw UnimplementedError();

  @override
  String second(int value) => throw UnimplementedError();

  @override
  String week(int value) => throw UnimplementedError();

  @override
  String year(int value) => throw UnimplementedError();
}
