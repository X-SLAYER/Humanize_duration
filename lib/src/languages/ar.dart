import 'package:humanize_duration/src/humanize_language.dart';

class ArLanguage implements HumanizeLanguage {
  const ArLanguage();

  @override
  String name() => 'ar';

  @override
  String day(int value) {
    if (value == 1) {
      return 'يوم';
    } else if (value == 2) {
      return 'يومين';
    } else if (value > 2 && value < 11) {
      return 'أيام';
    } else {
      return 'يوم';
    }
  }

  @override
  String hour(int value) {
    if (value == 1) {
      return 'ساعة';
    } else if (value == 2) {
      return 'ساعتين';
    } else if (value > 2 && value < 11) {
      return 'ساعات';
    } else {
      return 'ساعة';
    }
  }

  @override
  String millisecond(int value) {
    if (value == 1) {
      return 'جزء من الثانية';
    } else if (value == 2) {
      return 'جزآن من الثانية';
    } else if (value > 2 && value < 11) {
      return 'أجزاء من الثانية';
    } else {
      return 'جزء من الثانية';
    }
  }

  @override
  String minute(int value) {
    if (value == 1) {
      return 'دقيقة';
    } else if (value == 2) {
      return 'دقيقتان';
    } else if (value > 2 && value < 11) {
      return 'دقائق';
    } else {
      return 'دقيقة';
    }
  }

  @override
  String month(int value) {
    if (value == 1) {
      return 'شهر';
    } else if (value == 2) {
      return 'شهران';
    } else if (value > 2 && value < 11) {
      return 'شهران';
    } else {
      return 'شهر';
    }
  }

  @override
  String second(int value) {
    if (value == 1) {
      return 'ثانية';
    } else if (value == 2) {
      return 'ثانيتان';
    } else if (value > 2 && value < 11) {
      return 'ثواني';
    } else {
      return 'ثانية';
    }
  }

  @override
  String week(int value) {
    if (value == 1) {
      return 'أسبوع';
    } else if (value == 2) {
      return 'أسبوعين';
    } else if (value > 2 && value < 11) {
      return 'أسابيع';
    } else {
      return 'أسبوع';
    }
  }

  @override
  String year(int value) {
    if (value == 1) {
      return 'سنة';
    } else if (value == 2) {
      return 'سنتان';
    } else if (value > 2 && value < 11) {
      return 'سنوات';
    } else {
      return 'سنة';
    }
  }
}
