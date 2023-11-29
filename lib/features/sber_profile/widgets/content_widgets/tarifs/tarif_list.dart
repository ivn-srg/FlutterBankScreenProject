import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/Tarif.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/theme/theme.dart';

class ListOfTarifs extends StatelessWidget {
  const ListOfTarifs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var tarifs = Tarif.listOfTarifs;

    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 12),
      height: 215,
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tarifs.length,
          separatorBuilder: (context, i) => Container(
                padding: const EdgeInsets.only(left: 70),
                child:
                    Divider(height: 2.0, color: AppColor.colorOfDivider),
              ),
          itemBuilder: (context, index) => ListTile(
                title: Text(
                  tarifs[index].name,
                  style: lightTheme.textTheme.bodyMedium,
                ),
                subtitle: tarifs[index].addInfo != ""
                    ? Text(tarifs[index].addInfo,
                        style: lightTheme.textTheme.labelMedium)
                    : null,
                leading: tarifs[index].imageOfTarif,
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: AppColor.colorOfTrailingIcon,
                ),
                onTap: () {},
              )),
    );
  }
}
