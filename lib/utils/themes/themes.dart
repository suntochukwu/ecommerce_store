import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocheap/utils/themes/custom_themes/appbar_themes.dart';
import 'package:ocheap/utils/themes/custom_themes/bottomsheet_theme.dart';
import 'package:ocheap/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:ocheap/utils/themes/custom_themes/chip_themes.dart';
import 'package:ocheap/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:ocheap/utils/themes/custom_themes/outlinedbutton_theme.dart';
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';
import 'package:ocheap/utils/themes/custom_themes/textformfield_theme.dart';

class Overploytheme {
  Overploytheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ttextthemes.lighttheme,
      appBarTheme: Tappbartheme.lightappbartheme,
      elevatedButtonTheme: TelevatedButtonTheme.lightelevatedButtonTheme,
      checkboxTheme: Tcheckboxtheme.lightcheckboxTheme,
      chipTheme: Tchiptheme.lightChipTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: Toutlinedbuttontheme.lightoutlinedbuttonTheme,
      inputDecorationTheme: Ttextformfieldtheme.lightinputdecorationtheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ttextthemes.darktheme,
      appBarTheme: Tappbartheme.darkappbartheme,
      elevatedButtonTheme: TelevatedButtonTheme.darkelevatedButtonTheme,
      checkboxTheme: Tcheckboxtheme.darkcheckboxTheme,
      chipTheme: Tchiptheme.darkChipTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: Toutlinedbuttontheme.darkoutlinedbuttonTheme,
      inputDecorationTheme: Ttextformfieldtheme.darkinputdecorationtheme);
}
