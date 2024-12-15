import 'package:booking_system_flutter/locale/language_ar.dart';
import 'package:booking_system_flutter/locale/language_ro.dart';
import 'package:booking_system_flutter/locale/language_hi.dart';
import 'package:booking_system_flutter/locale/languages.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'language_en.dart';
import 'languages_de.dart';
import 'languages_fr.dart';
import 'language_cs.dart';

class AppLocalizations extends LocalizationsDelegate<BaseLanguage> {
  const AppLocalizations();

  @override
  Future<BaseLanguage> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'ar':
        return LanguageAr();
      case 'hi':
        return LanguageHi();
      case 'fr':
        return LanguageFr();
      case 'de':
        return LanguageDe();
      case 'ro':
        return LanguageRo();
      case 'cs':
        return LanguageCs();

      default:
        return LanguageRo();
    }
  }

  @override
  bool isSupported(Locale locale) =>
      LanguageDataModel.languages().contains(locale.languageCode);

  @override
  bool shouldReload(LocalizationsDelegate<BaseLanguage> old) => false;
}
