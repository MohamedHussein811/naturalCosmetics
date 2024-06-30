import 'dart:ui';

import 'package:get/get.dart';

class LocalizationService extends Translations {
  static const Locale fallbackLocale = Locale('en', 'US');

  static final Map<String, Locale> locales = {
    'en': const Locale('en', 'US'),
    'ar': const Locale('ar', 'EG'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Conditions for': 'Conditions for',
      'Medical resources': 'Medical resources',
      'Medical resource': 'Medical resource',
      'Recipe Details': 'Recipe Details',
      'Useful tips': 'Useful tips',
      'recipes': 'recipes',
      'ingredients': 'ingredients',
      'How to Prepare': 'How to Prepare',
      'How to Use': 'How to Use',
      'Images': 'Images',
      'Pick Image': 'Pick Image',
      'Please select a photo to detect the possible skin diseases':
      'Please select a photo to detect the possible skin diseases',
      'Upload Image': 'Upload Image',
      'Music On/Off': 'Music On/Off',
      'Dark Mode': 'Dark Mode',
      'Settings': 'Settings',
    },
    'ar_EG': {
      'Conditions for': 'الامراض الخاصه بالـ',
      'Medical resources': 'المصادر الطبية',
      'Recipe Details': 'تفاصيل الوصفة',
      'Medical resource': 'المصدر الطبي',
      'Useful tips': 'نصائح مفيدة',
      'recipes': 'وصفات',
      'ingredients': 'مكونات',
      'How to Prepare': 'كيفية التحضير',
      'How to Use': 'كيفية الاستخدام',
      'Images': 'صور',
      'Pick Image': 'اختيار صورة',
      'Please select a photo to detect the possible skin diseases':
      'يرجى اختيار صورة للكشف عن الأمراض الجلدية المحتملة',
      'Upload Image': 'تحميل صورة',
      'Music On/Off': 'تشغيل/إيقاف الموسيقى',
      'Dark Mode': 'الوضع الداكن',
      'Settings': 'الإعدادات',
    },
  };

  void changeLocale(String langCode) {
    final locale = locales[langCode];
    if (locale != null) {
      Get.updateLocale(locale);
    }
  }

  Locale get currentLocale => Get.locale ?? fallbackLocale;
}
