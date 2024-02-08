import 'package:flutter_test/flutter_test.dart';
import 'package:humanize_duration/humanize_duration.dart';

void main() {
  group('HumanizeDuration Core Functionality', () {
    test('humanizes English when passed no arguments', () {
      final result = humanizeDuration(const Duration(milliseconds: 1000));
      expect(result, '1 second');
    });

    test('can change the delimiter', () {
      const options = HumanizeOptions(delimiter: '+');
      final result = humanizeDuration(const Duration(milliseconds: 363000),
          options: options);
      expect(result, '6 minutes+3 seconds');
    });

    test('can change the spacer', () {
      const options = HumanizeOptions(spacer: ' whole ');
      final result = humanizeDuration(const Duration(milliseconds: 260040000),
          options: options);
      expect(result, '3 whole days, 14 whole minutes');
    });

    test('can use a conjunction with comma', () {
      const options = HumanizeOptions(
        conjunction: ' and ',
        lastPrefixComma: true,
      );
      final result = humanizeDuration(const Duration(milliseconds: 10874000),
          options: options);
      expect(result, '3 hours, 1 minute, and 14 seconds');
    });
    test('can use a conjunction', () {
      const options = HumanizeOptions(conjunction: ' and ');
      final result = humanizeDuration(const Duration(milliseconds: 10874000),
          options: options);
      expect(result, '3 hours, 1 minute and 14 seconds');
    });

    test('set the units', () {
      const options = HumanizeOptions(units: [Units.day, Units.hour]);
      final result =
          humanizeDuration(const Duration(hours: 6), options: options);
      expect(result, '6 hours');
    });
    test('Units will be auto organized', () {
      const options =
          HumanizeOptions(units: [Units.day, Units.minute, Units.hour]);
      final result =
          humanizeDuration(const Duration(hours: 6), options: options);
      expect(result, '6 hours');
    });

    test('correctly humanizes duration with specific units', () {
      const options = HumanizeOptions(units: [Units.hour, Units.minute]);
      const duration = Duration(hours: 1, minutes: 45, seconds: 30);
      final result = humanizeDuration(duration, options: options);
      expect(result, '1 hour, 45 minutes');
    });

    test('applies custom spacer correctly', () {
      const options = HumanizeOptions(spacer: '***');
      const duration = Duration(seconds: 62);
      final result = humanizeDuration(duration, options: options);
      expect(result, '1***minute, 2***seconds');
    });

    test('uses custom delimiter properly', () {
      const options = HumanizeOptions(delimiter: ' - ');
      const duration = Duration(minutes: 3, seconds: 45);
      final result = humanizeDuration(duration, options: options);
      expect(result, '3 minutes - 45 seconds');
    });

    test('handles conjunction without lastPrefixComma', () {
      const options =
          HumanizeOptions(conjunction: ' and ', lastPrefixComma: false);
      const duration = Duration(hours: 2, minutes: 30, seconds: 15);
      final result = humanizeDuration(duration, options: options);
      expect(result, '2 hours, 30 minutes and 15 seconds');
    });

    test('includes lastPrefixComma when specified', () {
      const options =
          HumanizeOptions(conjunction: ' and ', lastPrefixComma: true);
      const duration = Duration(hours: 2, minutes: 30, seconds: 15);
      final result = humanizeDuration(duration, options: options);
      expect(result, '2 hours, 30 minutes, and 15 seconds');
    });

    test('excludes units not specified', () {
      const options = HumanizeOptions(units: [Units.day]);
      const duration = Duration(days: 1, hours: 5);
      final result = humanizeDuration(duration, options: options);
      expect(result, '1 day');
    });

    test('handles empty units array', () {
      const options = HumanizeOptions(units: []);
      const duration = Duration(hours: 1);
      final result = humanizeDuration(duration, options: options);
      expect(result, '');
    });
  });
}
