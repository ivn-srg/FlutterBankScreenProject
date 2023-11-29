import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/sber_profile_screens_export.dart';
import 'package:untitled1/features/sber_settings/view/sber_settings_screen.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'tab_bar.dart';
import 'top_bar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DefaultTabController(length: 2, child: appBar()));
  }

  NestedScrollView appBar() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: AppConstants.topbarHeight,
            floating: true,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: SafeArea(child: TopBar()),
            ),
            bottom: PreferredSize(
                preferredSize:
                    const Size.fromHeight(AppConstants.collapsedTopbarHeight),
                child: Container(
                    decoration: _boxDecoration(), child: const Tabbar())),
          )
        ];
      },
      body: const TabBarView(
        children: [SberProfileScreen(), SberSettingsScreen()],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      color: AppColor.colorOfTabbar,
      boxShadow: [
        BoxShadow(
            color: AppColor.colorOfShadow1,
            blurRadius: 16,
            offset: Offset(0, 20))
      ],
    );
  }
}
