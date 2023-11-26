import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/Tarif.dart';
import 'package:untitled1/ui/theme/theme.dart';

class TarifsSection extends StatelessWidget {
  const TarifsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'Тарифы и лимиты',
                      style: lightTheme.textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    "Для операций в Сбербанк Онлайн",
                    style: lightTheme.textTheme.labelMedium,
                  )
                ],
              )),
            ],
          ),
        ),
        ListOfTarifs()
      ],
    );
  }
}



class ListOfTarifs extends StatelessWidget {
  const ListOfTarifs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var tarifs = Tarif.listOfTarifs;

    return SizedBox(
      height: 230,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tarifs.length,
          separatorBuilder: (context, i) => Container(
                padding: const EdgeInsets.only(left: 64),
                child:
                    Divider(height: 2.0, color: Colors.grey.withOpacity(0.3)),
              ),
          itemBuilder: (context, index) => ListTile(
                title: Text(
                  tarifs[index].name,
                  style: lightTheme.textTheme.bodyMedium,
                ),
                subtitle: Text(tarifs[index].addInfo,
                    style: lightTheme.textTheme.labelMedium),
                leading: tarifs[index].imageOfTarif,
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: Colors.black.withOpacity(0.5),
                ),
              )),
    );
  }
}