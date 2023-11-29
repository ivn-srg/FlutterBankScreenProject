import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/theme/theme.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColor.customGreen,
      unselectedLabelStyle: lightTheme.textTheme.labelLarge,
      labelStyle: lightTheme.textTheme.bodyLarge,
      tabs: [
        Tab(
          text: strings.tabName1,
        ),
        Tab(
          text: strings.tabName2,
        ),
      ],
    );
  }
}