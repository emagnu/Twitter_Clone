// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES 
import 'package:flutter/material.dart';
// Import FILES
import './pallete.dart';

//

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.backgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Pallete.blueColor,
    ),
  );
}