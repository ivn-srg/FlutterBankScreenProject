import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/CategoryOfInterest.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/theme/theme.dart';

class CategoryChipsState extends StatefulWidget {
  const CategoryChipsState({super.key});


  @override
  State<CategoryChipsState> createState() => _CategoryChipsStateState();
}

class _CategoryChipsStateState extends State<CategoryChipsState> {
  var categories = CategoryOfInterest.listOfCategories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.chipHorizontalPadding),
      child: Wrap(
        runSpacing: AppConstants.chipRunSpacing,
        children: categories.map((category) {
          return Container(
            margin: const EdgeInsets.only(right: AppConstants.chipRightPadding),
            child: ChoiceChip(
              selected: category.isSelected,
              onSelected: (selected) {
                setState(() {
                  category.isSelected = selected;
                });
              },
              label: Text(category.name),
              backgroundColor: AppColor.colorOfChip,
              labelStyle: lightTheme.textTheme.bodySmall,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.chipBorderRadius),
                side: BorderSide(color: AppColor.colorOfSideChip, width: AppConstants.chipBorderSideWidth),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
