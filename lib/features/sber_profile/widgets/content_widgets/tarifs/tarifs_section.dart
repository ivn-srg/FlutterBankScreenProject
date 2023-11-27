import 'package:flutter/material.dart';

import 'description_of_tarif_section.dart';
import 'tarif_list.dart';

class TarifsSection extends StatelessWidget {
  const TarifsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 28),
      child: const Column(
        children: [
          DescriptionOfTarifSection(),
          ListOfTarifs()
        ],
      ),
    );
  }
}




