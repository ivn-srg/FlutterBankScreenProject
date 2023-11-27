import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/theme/theme.dart';

class DescriptionOfInterestSection extends StatelessWidget {
  const DescriptionOfInterestSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  strings.thirdSectionTitle,
                  style: lightTheme.textTheme.titleMedium,
                ),
              ),
              Text(
                strings.thirdSectionSubtitle,
                style: lightTheme.textTheme.labelMedium,
              )
            ],
          )),
        ],
      ),
    );
  }
}