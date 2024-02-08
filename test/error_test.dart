// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter_test/flutter_test.dart';
import 'package:humanize_duration/humanize_duration.dart';
import 'package:humanize_duration/src/constants.dart';

import 'common/bad_language.dart';

void main() {
  group('Humanize Duration Language Tests', () {
    // Testing bad language input
    test('throws an error when passed a bad language in the function', () {
      final humanizingWith = (String? language) => humanizeDuration(
            const Duration(milliseconds: 10000),
            language: supportedLanguages[language]!,
          );

      expect(() => humanizingWith("EN"), throwsA(isA<TypeError>()));
      expect(() => humanizingWith("bad language"), throwsA(isA<TypeError>()));
      expect(() => humanizingWith(""), throwsA(isA<TypeError>()));
      expect(() => humanizingWith(null), throwsA(isA<TypeError>()));
    });

    test('throws an error for unsupported custom language objects', () {
      final humanizingWithCustomLanguage =
          (HumanizeLanguage language) => humanizeDuration(
                const Duration(milliseconds: 10000),
                language: language,
              );

      expect(() => humanizingWithCustomLanguage(BadLanguage()),
          throwsA(isA<UnimplementedError>()));
    });
  });
}
