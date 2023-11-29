// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/theme/theme.dart';

class DescriptionOfSection extends StatelessWidget {
  String title;
  String subtitle;

  DescriptionOfSection(this.title, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding),
      margin: const EdgeInsets.only(bottom: AppConstants.descriptionSectionBottomPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: AppConstants.betweenTitleAndSubtitlePadding),
                child: Text(
                  title,
                  style: lightTheme.textTheme.titleMedium,
                ),
              ),
              Text(
                subtitle,
                style: lightTheme.textTheme.labelMedium,
              )
            ],
          )),
        ],
      ),
    );
  }
}
