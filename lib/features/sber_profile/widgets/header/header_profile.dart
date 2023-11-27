import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_settings/sber_settings_screen_export.dart';

import '../../view/sber_profile_screen.dart';
import 'tab_bar.dart';
import 'top_bar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Center(
        child: TabBarView(
          children: [
            SberProfileScreen(), 
            SberSettingsScreen()
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(300),
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: _boxDecoration(),
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopBar(),
              SizedBox(height: 10),
              Tabbar(),
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
}