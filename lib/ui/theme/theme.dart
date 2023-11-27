import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGray),
    useMaterial3: true,
    dividerColor: Colors.grey[300],
    // primarySwatch: Colors.green,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
      ),
      titleMedium: const TextStyle(
        color: Colors.black,
        fontSize: 21,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w700,
        letterSpacing: -0.70,
      ),
      bodyLarge: const TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
      bodyMedium: const TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.40,
        height: 1.3
      ),
      bodySmall: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41,
      ),
      labelLarge: TextStyle(
        color: Colors.black.withOpacity(0.55),
        fontSize: 17,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
      labelMedium: TextStyle(
        color: Colors.black.withOpacity(0.6),
        fontSize: 15,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.42,
        height: 1.2
      ),
      labelSmall: TextStyle(
        color: Colors.black.withOpacity(0.55),
        fontSize: 14,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41,
      ),
    ),
    scaffoldBackgroundColor: Colors.lightGray);
