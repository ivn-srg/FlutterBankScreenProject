import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/theme/theme.dart';
import '/ui/images.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () {},
              iconSize: 26,
              color: Colors.customGreen,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: Image.asset(AppImages.userAvatar).image,
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x7A1D1D25),
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  strings.userName,
                  style: lightTheme.textTheme.titleLarge,
                )
              ],
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app_rounded),
              onPressed: () {},
              iconSize: 26,
              color: Colors.customGreen,
            ),
          ],
        ));
  }
}
