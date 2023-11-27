import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/theme/theme.dart';

class DescriptionOfServiceSections extends StatelessWidget {
  const DescriptionOfServiceSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  strings.firstSectionTitle,
                  style: lightTheme.textTheme.titleMedium,
                ),
              ),
              Text(
                strings.firstSectionSubtitle,
                style: lightTheme.textTheme.labelMedium,
              )
            ],
          )),
        ],
      ),
    );
  }
}
