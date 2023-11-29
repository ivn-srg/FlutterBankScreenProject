import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/images.dart';

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
          AppImages.sberPraimIcon,
          height: AppConstants.cardImageSize,
        )),
    CardOffer(
        "Переводы",
        "Автопродление 21 августа",
        "199 ₽ в месяц",
        Image.asset(
          AppImages.percentFillIcon,
          height: AppConstants.cardImageSize,
        )),
  ];
}
