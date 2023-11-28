import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';

import 'categories_list.dart';
import '../description_of_section.dart';

class InterestsSection extends StatelessWidget {
  const InterestsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescriptionOfSection(strings.thirdSectionTitle, strings.thirdSectionSubtitle),
        const CategoriesChips(),
      ],
    );
  }
}