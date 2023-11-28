import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SberProfileScreen extends StatelessWidget {
  const SberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
        ServicesSection(),
        TarifsSection(),
        InterestsSection()
      ]),
    );
  }
}
