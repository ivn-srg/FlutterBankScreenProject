import 'package:flutter/material.dart';
import 'package:untitled1/globals.dart';
import 'package:untitled1/ui/Colors.dart';
import 'package:untitled1/ui/theme/theme.dart';
import '/ui/images.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: AppConstants.topPaddingTopbar),
        color: AppColor.colorOfTopbar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: () {},
              iconSize: AppConstants.topbarIconSize,
              color: AppColor.customGreen,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: AppConstants.topPaddingUserAvatar),
                  width: AppConstants.userAvatarSize,
                  height: AppConstants.userAvatarSize,
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
                        color: AppColor.colorOfShadowNearImage,
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppConstants.bottomPaddingUserAvatar,
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
              iconSize: AppConstants.topbarIconSize,
              color: AppColor.customGreen,
            ),
          ],
        ));
  }
}
