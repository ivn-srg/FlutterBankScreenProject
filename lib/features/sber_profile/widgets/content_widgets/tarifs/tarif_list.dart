import 'package:flutter/material.dart';
import 'package:untitled1/features/sber_profile/Model/Tarif.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/images.dart';
import 'package:untitled1/ui/theme/theme.dart';

class ListOfTarifs extends StatelessWidget {
  const ListOfTarifs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var tarifs = Tarif.listOfTarifs;

    return SizedBox(
      height: AppConstants.tarifListHeight,
      child: ListView.separated(
          padding: const EdgeInsets.all(AppConstants.tarifListVerticalPadding),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tarifs.length,
          separatorBuilder: (context, i) => Container(
                padding: const EdgeInsets.only(
                    left: AppConstants.tarifListDividerLeftPadding),
                child: Divider(
                    height: AppConstants.tarifListDividerHeight,
                    color: AppColor.colorOfDivider),
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
                trailing: Image.asset(
                  AppImages.disclosure,
                  height: AppConstants.tarifListTrailingIconSize,
                ),
                onTap: () {},
              )),
    );
  }
}
