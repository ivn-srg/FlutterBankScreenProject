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
  // {
  //   if (this.addInfo == null) {
  //     this.addInfo = "";
  //   } else {
  //     this.addInfo = addInfo;
  //   }
  // }
}
