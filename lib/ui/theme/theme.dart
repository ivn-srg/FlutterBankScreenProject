import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGray),
    useMaterial3: true,
    dividerColor: Colors.grey[300],
    // primarySwatch: Colors.green,
    textTheme: TextTheme(
        titleLarge: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.20),
        titleMedium: const TextStyle(
          color: Colors.black,
          fontSize: 21,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w700,
          letterSpacing: -0.70,
        ),
        bodyMedium: const TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.40,
        ),
        bodySmall: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.41,
        ),
        labelLarge: TextStyle(
          color: Colors.black.withOpacity(0.55),
          fontSize: 16,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.40,
        ),
        labelMedium: TextStyle(
          color: Colors.black.withOpacity(0.55),
          fontSize: 14,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          letterSpacing: -0.42,
        )),
    scaffoldBackgroundColor: Colors.lightGray);
