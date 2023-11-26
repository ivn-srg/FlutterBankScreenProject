import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/features/sber_profile/Model/CategoryOfInterest.dart';
import 'package:untitled1/features/sber_profile/Model/Tarif.dart';
import 'package:untitled1/ui/theme/theme.dart';
import 'package:untitled1/features/sber_profile/Model/Card.dart';

var listOfCards = [
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

var listOfTarifs = [
  Tarif(
      "Изменить суточный лимит",
      "На платежи и переводы",
      SvgPicture.asset(
        'assets/svg/speedometer.svg',
        width: 36,
        height: 36,
        theme: SvgTheme(currentColor: Colors.customGreen),
      )),
  Tarif(
      "Переводы без комиссии",
      "Показать остаток в этом месяце",
      SvgPicture.asset(
        'assets/svg/percentIcon.svg',
        width: 36,
        height: 36,
        theme: SvgTheme(currentColor: Colors.customGreen),
      )),
  Tarif(
      "Информация о тарифах и лимитах",
      "",
      SvgPicture.asset(
        'assets/svg/arrowIcon.svg',
        width: 36,
        height: 36,
        theme: SvgTheme(currentColor: Colors.customGreen),
      ))
];

var listOfCategories = [
  CategoryOfInterest("Еда", null),
  CategoryOfInterest("Саморазвитие", null),
  CategoryOfInterest("Технологии", null),
  CategoryOfInterest("Дом", null),
  CategoryOfInterest("Досуг", null),
  CategoryOfInterest("Забота о себе", null),
  CategoryOfInterest("Наука", null)
];

class SberProfileScreen extends StatelessWidget {
  const SberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        // decoration: BoxDecoration(color: Colors.grey),
        child: Column(
          children: [
            ServicesSection(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
            ),
            TarifsSection(),
          ],
        ),
      ),
      ListOfTarifs(),
      InterestsSection(),
      Container(
        // padding: EdgeInsets.symmetric(horizontal: 12),
        height: 150,
        child: CardList(),
      ),
      SizedBox(
        height: 20,
      )
      // CardList1(),
    ]);
  }
}

class TarifsSection extends StatelessWidget {
  const TarifsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Тарифы и лимиты',
                style: lightTheme.textTheme.titleMedium,
              ),
            ),
            Container(
              child: Text(
                "Для операций в Сбербанк Онлайн",
                style: lightTheme.textTheme.labelMedium,
              ),
            )
          ],
        )),
      ],
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'У вас подключено',
                style: lightTheme.textTheme.titleMedium,
              ),
            ),
            Container(
              child: Text(
                "Подписки, автоплатежи и сервисы, на которые вы подписались",
                style: lightTheme.textTheme.labelMedium,
              ),
            )
          ],
        )),
      ],
    );
  }
}

class InterestsSection extends StatelessWidget {
  const InterestsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Row(
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
          SizedBox(
            height: 16,
          ),
          CategoriesChips(),
        ],
      ),
    );
  }
}

class CategoriesChips extends StatelessWidget {
  const CategoriesChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      // runSpacing: 4,
      children: listOfCategories.map((category) {
        return Chip(
          label: Text(category.name),
          backgroundColor: Colors.black.withOpacity(0.08),
          labelStyle: lightTheme.textTheme.bodySmall,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.transparent, width: 0),
          ),
        );
      }).toList(),
    );
  }
}

class ListOfTarifs extends StatelessWidget {
  const ListOfTarifs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: listOfTarifs.length,
          separatorBuilder: (context, i) => Container(
                padding: const EdgeInsets.only(
                    left:
                        64), // Установите отступы по горизонтали по вашему выбору
                child:
                    Divider(height: 2.0, color: Colors.grey.withOpacity(0.3)),
              ),
          itemBuilder: (context, index) => ListTile(
                title: Text(
                  listOfTarifs[index].name,
                  style: lightTheme.textTheme.bodyMedium,
                ),
                subtitle: Text(listOfTarifs[index].addInfo,
                    style: lightTheme.textTheme.labelMedium),
                leading: listOfTarifs[index].imageOfTarif,
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: Colors.black.withOpacity(0.5),
                ),
              )),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemCount: listOfCards.length, // Количество карточек
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
          // child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            width: 210,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      child: listOfCards[index].imageOfCard,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      listOfCards[index].cardName,
                      style: lightTheme.textTheme.bodyMedium,
                    )
                  ],
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listOfCards[index].cardInfo,
                      style: lightTheme.textTheme.bodySmall,
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      listOfCards[index].cardCost,
                      style: lightTheme.textTheme.labelMedium,
                    )
                  ],
                ),
                // Другие элементы вашей карточки
              ],
            ),
          ),
          // )
        );
      },
    );
  }
}


