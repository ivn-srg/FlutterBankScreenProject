import 'package:flutter_svg/svg.dart';

class CategoryOfInterest {
  String name;
  bool isSelected = false;
  SvgPicture? iconOfCategory;

  CategoryOfInterest(
    this.name,
    this.iconOfCategory
  );

  static var listOfCategories = [
    CategoryOfInterest("Еда", null),
    CategoryOfInterest("Саморазвитие", null),
    CategoryOfInterest("Технологии", null),
    CategoryOfInterest("Дом", null),
    CategoryOfInterest("Досуг", null),
    CategoryOfInterest("Забота о себе", null),
    CategoryOfInterest("Наука", null)
  ];
}
