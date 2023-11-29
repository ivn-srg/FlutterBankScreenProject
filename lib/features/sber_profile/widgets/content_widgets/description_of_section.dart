// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled1/ui/theme/theme.dart';

class DescriptionOfSection extends StatelessWidget {
  String title;
  String subtitle;

  DescriptionOfSection(this.title, this.subtitle, {super.key});

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
