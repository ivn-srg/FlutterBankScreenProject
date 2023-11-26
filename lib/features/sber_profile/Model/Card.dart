import 'package:flutter/material.dart';

class CardOffer {
  String cardName;
  String cardInfo;
  String cardCost;
  Image imageOfCard;

  CardOffer(this.cardName, this.cardInfo, this.cardCost, this.imageOfCard);

  static var listOfCards = [
    CardOffer(
        "СберПрайм",
        "Платеж 9 июля",
        "199 ₽ в месяц",
        Image.asset(
          "assets/images/sberPraimIcon.png",
          height: 36,
        )),
    CardOffer(
        "Переводы",
        "Автопродление 21 августа",
        "199 ₽ в месяц",
        Image.asset(
          "assets/images/percentFillIcon.png",
          height: 36,
        )),
  ];
}
