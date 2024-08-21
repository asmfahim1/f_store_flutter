import 'package:intl/intl.dart';

class FFormatter {
  static formatDate(DateTime? date) {
    date ??= DateTime.now();

    // customize format
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String numberFormatterBD(dynamic number) {
    return NumberFormat('####', 'bn_BD').format(int.parse('$number'));
  }

  final List<String> banglaMeaning = [
    'এক',
    'দুই',
    'তিন',
    'চার',
    'পাঁচ',
    'ছয়',
    'সাত',
    'আট',
    'নয়',
    'দশ',
    'এগারো',
    'বারো',
    'তেরো',
    'চৌদ্দ',
    'পনেরো',
    'ষোলো',
    'সতেরো',
    'আঠারো',
    'ঊনিশ',
    'কুড়ি',
    'একুশ',
    'বাইশ',
    'তেইশ',
    'চব্বিশ',
    'পঁচিশ',
    'ছাব্বিশ',
    'সাতাশ',
    'আঠাশ',
    'ঊনত্রিশ',
    'ত্রিশ',
    'একত্রিশ',
    'বত্রিশ',
    'তেত্রিশ',
    'চৌত্রিশ',
    'পঁয়ত্রিশ',
    'ছত্রিশ',
    'সাঁইত্রিশ',
    'আটত্রিশ',
    'ঊনচল্লিশ',
    'চল্লিশ',
    'একচল্লিশ',
    'বিয়াল্লিশ',
    'তেতাল্লিশ',
    'চুয়াল্লিশ',
    'পঁয়তাল্লিশ',
    'ছেচল্লিশ',
    'সাতচল্লিশ',
    'আটচল্লিশ',
    'ঊনপঞ্চাশ',
    'পঞ্চাশ',
    'একান্ন',
    'বাহান্ন',
    'তিপ্পান্ন',
    'চুয়ান্ন',
    'পঞ্চান্ন',
    'ছাপ্পান্ন',
    'সাতান্ন',
    'আটান্ন',
    'ঊনষাট',
    'ষাট',
    'একষট্টি',
    'বাষট্টি',
    'তেষট্টি',
    'চৌষট্টি',
    'পঁয়ষট্টি',
    'ছেষট্টি',
    'সাতষট্টি',
    'আটষট্টি',
    'ঊনসত্তর',
    'সত্তর',
    'একাত্তর',
    'বাহাত্তর',
    'তিয়াত্তর',
    'চুয়াত্তর',
    'পঁচাত্তর',
    'ছিয়াত্তর',
    'সাতাত্তর',
    'আটাত্তর',
    'ঊনআশি',
    'আশি',
    'একাশি',
    'বিরাশি',
    'তিরাশি',
    'চুরাশি',
    'পঁচাশি',
    'ছিয়াশি',
    'সাতাশি',
    'অষ্টাশি',
    'ঊননব্বই',
    'নব্বই',
    'একানব্বই',
    'বিরানব্বই',
    'তিরানব্বই',
    'চুরানব্বই',
    'পঁচানব্বই',
    'ছিয়ানব্বই',
    'সাতানব্বই',
    'অষ্ঠানব্বই',
    'নিরানব্বই',
    'একশত'
  ];

  String convertToBanglaMeaning(int number) {
    if (number < 1 || number > 100) {
      return 'Out of range';
    }
    return banglaMeaning[number - 1];
  }

  String numberFormatterBangla(int number) {
    final banglaDigits = {
      '0': '০',
      '1': '১',
      '2': '২',
      '3': '৩',
      '4': '৪',
      '5': '৫',
      '6': '৬',
      '7': '৭',
      '8': '৮',
      '9': '৯',
    };

    String banglaString = number.toString().split('').map((digit) {
      return banglaDigits[digit] ?? digit;
    }).join('');

    return NumberFormat('####', 'bn_BD').format(int.parse(banglaString));
  }

  String numberFormatterEn(String bengaliNumber) {
    Map<String, String> bengaliToEnglishMap = {
      '০': '0',
      '১': '1',
      '২': '2',
      '৩': '3',
      '৪': '4',
      '৫': '5',
      '৬': '6',
      '৭': '7',
      '৮': '8',
      '৯': '9',
    };

    String englishNumber = bengaliNumber.split('').map((char) {
      return bengaliToEnglishMap[char] ?? char;
    }).join('');

    return englishNumber;
  }

  String dateFormatterBD(date) {
    return '${NumberFormat('####', 'bn_BD').format(int.parse(date.substring(8, 10)))}/${NumberFormat('####', 'bn_BD').format(int.parse(date.substring(5, 7)))}/${NumberFormat('####', 'bn_BD').format(int.parse(date.substring(0, 4)))}';
  }

  String formatSalaryRangeBD(String salaryRange) {
    List<String> salaryParts = salaryRange.split('-');
    String formattedMinSalary = NumberFormat('###,###', 'bn_BD')
        .format(int.parse(salaryParts[0].trim()));
    String formattedMaxSalary = NumberFormat('###,###', 'bn_BD')
        .format(int.parse(salaryParts[1].trim()));
    return '$formattedMinSalary - $formattedMaxSalary';
  }

  static String bangleLetters =
      "ক, খ, গ, ঘ, ঙ, চ, ছ, জ, ঝ, ঞ, ট, ঠ, ড, ঢ, ণ, ত, থ, দ, ধ, ন, প, ফ, ব, ভ, ম, য, র, ল, শ, ষ, স, হ, ড়, ঢ়, য়, ৎ, ং, ঃ, ঁ";

  List<String> bangleLettersList =
      bangleLetters.split(',').map((e) => e.trim()).toList();
}
