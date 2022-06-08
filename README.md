# Humanize Duration

Humanize a duration to a readable format.
inspired from humanizeDuration.js

### Installation and usage ###

Add package to your pubspec:

```yaml
dependencies:
  humanize_duration: any # or the latest version on Pub
```

## Usage

By default, Humanize Duration will humanize down to the millisecond. It will humanize in English by default.

```dart
humanizeDuration(const Duration(milliseconds: 3000)); // '3 seconds'
humanizeDuration(const Duration(milliseconds: 97320000)); // '1 day, 3 hours, 2 minutes'
```

# Options and languages

### languages

  ```dart
  
/// Supported languages: [EnLanguage, EsLanguage, FrLanguage, JpLanguage, ArLanguage]
/// `English` , `Spanish` , `French` , `Arabic` , `Japanese`
  
 humanizeDuration(
  const Duration(milliseconds: 97320000),
  language: const ArLanguage(),
);
 //  ١ يوم , ٣ ساعات

 ```
 
 ### Add a custom language
 Firstly you need to implement [HumanizeLanguage](https://github.com/X-SLAYER/Humanize_duration/blob/main/lib/src/humanize_language.dart) class.
 
 ```dart
import 'package:humanize_duration/humanize_duration.dart';

class EuLanguage implements HumanizeLanguage {
  const EuLanguage();

  @override
  String name() => 'eu';

  @override
  String day(int value) => 'egun';

  @override
  String hour(int value) => 'ordu';

  @override
  String millisecond(int value) => 'milisegundo';

  @override
  String minute(int value) => 'minutu';

  @override
  String month(int value) => 'hilabete';

  @override
  String second(int value) => 'segundo';

  @override
  String week(int value) => 'aste';

  @override
  String year(int value) => 'hilabete';
}


```
### delimiter

String to display between the previous unit and the next value.

```dart
humanizeDuration(
    const Duration(milliseconds: 97320000),
    options: const HumanizeOptions(delimiter: ' -- '),
  ); // 1 day -- 3 hours -- 2 minutes
  
humanizeDuration(
  const Duration(milliseconds: 22140000),
  options: const HumanizeOptions(delimiter: ' and '),
); // 6 hours and 9 minutes
  
```

### spacer

String to display between each value and unit.

```dart
humanizeDuration(
  const Duration(milliseconds: 22140000),
  options: const HumanizeOptions(spacer: ' whole '),
); // 6 whole hours, 9 whole minutes
  
```

### units

It can be one, or a combination of any, of the following.
`Units.year`, `Units.month`, `Units.week`, `Units.day`, `Units.hour`, `Units.minute`, `Units.second`, `Units.millisecond`.

```dart
humanizeDuration(
  const Duration(milliseconds: 3600000),
  options: const HumanizeOptions(units: [Units.hour]),
); // 1 hour

humanizeDuration(
  const Duration(milliseconds: 3600000),
  options: const HumanizeOptions(units: [Units.minute]),
); // 60 minutes

humanizeDuration(
  const Duration(milliseconds: 3600000),
  options: const HumanizeOptions(units: [Units.day, Units.hour]),
); // 1 hour
  
```

### conjunction

String to include before the final unit.
You can also set `lastPrefixComma` to `false` to eliminate the final comma.

```dart
humanizeDuration(
  const Duration(milliseconds: 22140000),
  options: const HumanizeOptions(conjunction: ' and '),
); // 6 hours and 9 minutes

humanizeDuration(
  const Duration(milliseconds: 22141000),
  options: const HumanizeOptions(conjunction: ' and '),
); // 6 hours, 9 minutes and 1 second

 humanizeDuration(
  const Duration(milliseconds: 22141000),
  options: const HumanizeOptions(
    conjunction: ' and ',
    lastPrefixComma: true,
  ),
); // 6 hours, 9 minutes, and 1 second
  
```
