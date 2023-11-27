import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/sber_profile/sber_profile_screens_export.dart';
import 'l10n/l10n.dart';
import 'ui/theme/theme.dart';

class EduSberProfileApp extends StatelessWidget {
  const EduSberProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
      ],
      home: const DefaultTabController(
        length: 2,
        child: HeaderProfile(),
      ),
    );
  }
}


