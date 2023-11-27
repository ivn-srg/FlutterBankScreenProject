import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tarif {
  String name;
  String addInfo;
  SvgPicture imageOfTarif;

  Tarif(
    this.name,
    this.addInfo,
    this.imageOfTarif,
  );

  static var listOfTarifs = [
    Tarif(
        "Изменить суточный лимит",
        "На платежи и переводы",
        SvgPicture.asset(
          'assets/svg/speedometer.svg',
          width: 38,
          height: 38,
        )),
    Tarif(
        "Переводы без комиссии",
        "Показать остаток в этом месяце",
        SvgPicture.asset(
          'assets/svg/percentIcon.svg',
          width: 38,
          height: 38,
        )),
    Tarif(
        "Информация о тарифах и лимитах",
        "",
        SvgPicture.asset(
          'assets/svg/arrowIcon.svg',
          width: 38,
          height: 38,
        ))
  ];
}
