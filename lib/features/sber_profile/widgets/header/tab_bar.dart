import 'package:flutter/material.dart';
import 'package:untitled1/ui/theme/theme.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Colors.customGreen,
      unselectedLabelStyle: lightTheme.textTheme.labelLarge,
      labelStyle: lightTheme.textTheme.bodyMedium,
      tabs: const [
        Tab(
          text: "Профиль",
        ),
        Tab(
          text: "Настройки",
        ),
      ],
    );
  }
}