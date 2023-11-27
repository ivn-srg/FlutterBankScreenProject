import 'package:flutter/material.dart';

import 'categories_list.dart';
import 'description_of_interest_section.dart';

class InterestsSection extends StatelessWidget {
  const InterestsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DescriptionOfInterestSection(),
        CategoriesChips(),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}