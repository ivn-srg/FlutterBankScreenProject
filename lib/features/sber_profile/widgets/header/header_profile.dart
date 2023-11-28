import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/sber_profile_screens_export.dart';
import 'package:untitled1/features/sber_settings/view/sber_settings_screen.dart';
import 'tab_bar.dart';
import 'top_bar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 280,
                    floating: true,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      background: Container(
                        decoration: _boxDecoration(),
                        child: const SafeArea(child: TopBar()),
                      ),
                    ),
                    bottom: const PreferredSize(
                        preferredSize: Size.fromHeight(50), child: Tabbar()),
                  )
                ];
              },
              body: const TabBarView(
                children: [SberProfileScreen(), SberSettingsScreen()],
              ),
            )
        )
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0x14000014),
          blurRadius: 16,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    );
  }
}
