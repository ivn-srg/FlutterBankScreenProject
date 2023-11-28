import 'package:flutter/material.dart';
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
          width: 38,
          height: 38,
        )),
    Tarif(
        "Переводы без комиссии",
        "Показать остаток в этом месяце",
        Image.asset(
          AppImages.percent,
          width: 38,
          height: 38,
        )),
    Tarif(
        "Информация о тарифах и лимитах",
        "",
        Image.asset(
          AppImages.arrows,
          width: 38,
          height: 38,
        ))
  ];
}
