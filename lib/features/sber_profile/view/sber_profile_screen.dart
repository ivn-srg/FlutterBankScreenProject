import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import '../widgets/widgets.dart';

class SberProfileScreen extends StatelessWidget {
  const SberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.verticalPadding),
      physics: const NeverScrollableScrollPhysics(),
      children: const [
      ServicesSection(),
      TarifsSection(),
      InterestsSection()
    ]);
  }
}
