import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/Card.dart';
import 'package:untitled1/ui/theme/theme.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'У вас подключено',
                      style: lightTheme.textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    "Подписки, автоплатежи и сервисы, на которые вы подписались",
                    style: lightTheme.textTheme.labelMedium,
                  )
                ],
              )),
            ],
          ),
        ),
        CardList()
      ],
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.horizontal,
        itemCount: CardOffer.listOfCards.length, // Количество карточек
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x114F4F6C),
                  blurRadius: 14,
                  offset: Offset(0, 8),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: 210,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: CardOffer.listOfCards[index].imageOfCard,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        CardOffer.listOfCards[index].cardName,
                        style: lightTheme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CardOffer.listOfCards[index].cardInfo,
                        style: lightTheme.textTheme.bodySmall,
                      ),
                      Text(
                        CardOffer.listOfCards[index].cardCost,
                        style: lightTheme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ],
              ),
            ),
            // )
          );
        },
      ),
    );
  }
}