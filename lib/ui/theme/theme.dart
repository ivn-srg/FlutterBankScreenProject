import 'package:flutter/material.dart';
import 'package:untitled1/ui/Colors.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.lightGray),
    useMaterial3: true,
    dividerColor: Colors.grey[300],
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
      ),
      titleMedium: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w700,
        letterSpacing: -0.70,
      ),
      bodyLarge: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.4,
      ),
      bodyMedium: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.40,
        height: 1.3
      ),
      bodySmall: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41,
      ),
      labelLarge: TextStyle(
        color: AppColor.colorOfLabelText,
        fontSize: 16,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.4,
      ),
      labelMedium: TextStyle(
        color: AppColor.colorOfLabelText,
        fontSize: 14,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.42,
        height: 1.2
      ),
      labelSmall: TextStyle(
        color: AppColor.colorOfLabelText,
        fontSize: 14,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41,
        height: 1.2
      ),
    ),
    scaffoldBackgroundColor: AppColor.lightGray);
