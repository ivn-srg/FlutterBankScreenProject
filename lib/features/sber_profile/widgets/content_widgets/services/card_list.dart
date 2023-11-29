import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/Card.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/theme/theme.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    var cards = CardOffer.listOfCards;

    return SizedBox(
      height: AppConstants.cardContainerHeight,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.horizontalPadding, vertical: AppConstants.verticalCardPaddingToContainer),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: AppConstants.betweenCardsPadding),
            decoration: shapeDecoration(),
            child: Container(
              padding: const EdgeInsets.all(AppConstants.innerCardPadding),
              width: AppConstants.cardContainerWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: AppConstants.imageToTextCardPadding),
                        child: cards[index].imageOfCard,
                      ),
                      Text(
                        cards[index].cardName,
                        style: lightTheme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: AppConstants.betweenAddInfoAndCostCardPadding),
                        child: Text(
                          cards[index].cardInfo,
                          style: lightTheme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        cards[index].cardCost,
                        style: lightTheme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ShapeDecoration shapeDecoration() {
    return ShapeDecoration(
      color: AppColor.colorOfCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
      ),
      shadows: const [
        BoxShadow(
          color: AppColor.colorOfShadow1,
          blurRadius: 14,
          offset: Offset(0, 8),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: AppColor.colorOfShadow2,
          blurRadius: 10,
          offset: Offset(0, 2),
          spreadRadius: 0,
        )
      ],
    );
  }
}