import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/ui/theme/theme.dart';
import 'package:untitled1/features/sber_settings/sber_settings_screen_export.dart';

import '../../view/sber_profile_screen.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Center(
        child: TabBarView(
          children: [SberProfileScreen(), SberSettingsScreen()],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(295),
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: _boxDecoration(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _topBar(),
              const SizedBox(height: 10),
              _tabBar(),
            ],
          ),
        ),
      ),
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

  Widget _topBar() {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/crossIcon.svg',
              width: 26,
              height: 26,
              theme: const SvgTheme(currentColor: Colors.customGreen),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: Image.asset('assets/images/user_avatar.png').image,
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x7A1D1D25),
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(
                  "Екатерина",
                  style: lightTheme.textTheme.titleLarge,
                )
              ],
            ),
            SvgPicture.asset(
              'assets/svg/exitIcon.svg',
              width: 26,
              height: 26,
              theme: const SvgTheme(currentColor: Colors.customGreen),
            ),
          ],
        ));
  }

  Widget _tabBar() {
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
