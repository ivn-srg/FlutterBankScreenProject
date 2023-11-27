import 'package:flutter/material.dart';
import 'card_list.dart';
import 'description_of_service_section.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DescriptionOfServiceSections(),
        CardList(),
      ],
    );
  }
}
