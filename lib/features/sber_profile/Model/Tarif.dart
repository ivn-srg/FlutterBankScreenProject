import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/images.dart';

class Tarif {
  String name;
  String addInfo;
  Image imageOfTarif;

  Tarif(
    this.name,
    this.addInfo,
    this.imageOfTarif,
  );

  static var listOfTarifs = [
    Tarif(
        "Изменить суточный лимит",
        "На платежи и переводы",
        Image.asset(
          AppImages.speedometer,
          height: AppConstants.tarifImageSize,
        )),
    Tarif(
        "Переводы без комиссии",
        "Показать остаток в этом месяце",
        Image.asset(
          AppImages.percent,
          height: AppConstants.tarifImageSize,
        )),
    Tarif(
        "Информация о тарифах и лимитах",
        "",
        Image.asset(
          AppImages.arrows,
          height: AppConstants.tarifImageSize,
        ))
  ];
}
