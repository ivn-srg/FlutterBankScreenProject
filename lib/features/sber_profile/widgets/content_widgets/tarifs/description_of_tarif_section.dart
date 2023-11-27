import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/theme/theme.dart';

class DescriptionOfTarifSection extends StatelessWidget {
  const DescriptionOfTarifSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  strings.secondSectionTitle,
                  style: lightTheme.textTheme.titleMedium,
                ),
              ),
              Text(
                strings.secondSectionSubtitle,
                style: lightTheme.textTheme.labelMedium,
              )
            ],
          )),
        ],
      ),
    );
  }
}