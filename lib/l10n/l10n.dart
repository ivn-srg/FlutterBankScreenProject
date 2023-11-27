import 'package:flutter/material.dart';

class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String get userName {
    return 'Екатерина';
  }
  
  String get tabName1 {
    return 'Профиль';
  }
  
  String get tabName2 {
    return 'Настройки';
  }
  
  String get firstSectionTitle {
    return 'У вас подключено';
  }
  
  String get firstSectionSubtitle {
    return 'Подписка, автоплатежи и сервисы, на которые вы подписаны';
  }
  
  String get secondSectionTitle {
    return 'Тарифы и лимиты';
  }
  
  String get secondSectionSubtitle {
    return 'Для операций в Сбербанк Онлайн';
  }
  
  String get thirdSectionTitle {
    return 'Интересы';
  }
  
  String get thirdSectionSubtitle {
    return 'Мы подбираем истории и предложения по темам, которые вам нравятся';
  }
  
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['ru'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations();
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
