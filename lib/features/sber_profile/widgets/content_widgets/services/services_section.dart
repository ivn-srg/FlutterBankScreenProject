import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/widgets/content_widgets/description_of_section.dart';
import 'package:untitled1/globals.dart';
import 'card_list.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescriptionOfSection(strings.firstSectionTitle, strings.firstSectionSubtitle),
        const CardList(),
      ],
    );
  }
}
