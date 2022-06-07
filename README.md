# Humanize Duration

Humanize a duration to a readable format 

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

### Options and languages

  ```dart
  
/// Supported languages: [EnLanguage, EsLanguage, FrLanguage, JpLanguage, ArLanguage]
/// `English` , `Spanish` , `French` , `Arabic` , `Japanese`
  
 humanizeDuration(
  const Duration(milliseconds: 97320000),
  language: const ArLanguage(),
  options: const HumanizeOptions(
    conjunction: ' و ', // String to include before the final unit.
    units: [Units.day, Units.hour], // List of units to use. It can be one, or a combination of any, of the following
    // delimiter: ' -- ', // String to display between the previous unit and the next value.
    // lastPrefixComma: false, // The comma set before the last value.
    // spacer: ' Whole' // String to display between each value and unit.
  ),
);
 //  ١ يوم و ٣ ساعات

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
