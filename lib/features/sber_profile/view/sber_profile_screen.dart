import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SberProfileScreen extends StatelessWidget {
  const SberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      ServicesSection(),
      TarifsSection(),
      InterestsSection()
    ]);
  }
}
