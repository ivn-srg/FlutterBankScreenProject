import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/widgets/content_widgets/description_of_section.dart';
import 'package:untitled1/globals.dart';
import 'tarif_list.dart';

class TarifsSection extends StatelessWidget {
  const TarifsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppConstants.betweenSectionsPadding),
      child: Column(
        children: [
          DescriptionOfSection(strings.secondSectionTitle, strings.secondSectionSubtitle),
          const ListOfTarifs()
        ],
      ),
    );
  }
}




