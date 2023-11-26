import 'package:flutter/material.dart';

import 'features/sber_profile/sber_profile_screens_export.dart';
import 'ui/theme/theme.dart';

class EduSberProfileApp extends StatelessWidget {
  const EduSberProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const DefaultTabController(
        length: 2,
        child: HeaderProfile(),
      ),
    );
  }
}


