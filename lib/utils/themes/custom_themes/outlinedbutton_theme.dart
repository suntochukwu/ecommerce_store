import 'package:flutter/material.dart';

class Toutlinedbuttontheme{

  Toutlinedbuttontheme._();

  static final lightoutlinedbuttonTheme  = 
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0 ,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(horizontal:20,  vertical: 16),
        textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )) ;

  static final darkoutlinedbuttonTheme  = 
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0 ,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.blueAccent),
        padding: const EdgeInsets.symmetric(horizontal:20,  vertical: 16),
        textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )) ;

}
