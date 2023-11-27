import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/CategoryOfInterest.dart';
import 'package:untitled1/ui/theme/theme.dart';

class InterestsSection extends StatelessWidget {
  const InterestsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                      'Интересы',
                      style: lightTheme.textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    "Мы подбираем истории и предложения по темам, которые вам нравятся",
                    style: lightTheme.textTheme.labelMedium,
                  )
                ],
              )),
            ],
          ),
        ),
        const CategoriesChips(),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class CategoriesChips extends StatelessWidget {
  const CategoriesChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var categories = CategoryOfInterest.listOfCategories;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Wrap(
        runSpacing: -2,
        children: categories.map((category) {
          return Container(
            margin: const EdgeInsets.only(right: 5),
            child: Chip(
              label: Text(category.name),
              backgroundColor: Colors.black.withOpacity(0.08),
              labelStyle: lightTheme.textTheme.bodySmall,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.transparent, width: 0),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
