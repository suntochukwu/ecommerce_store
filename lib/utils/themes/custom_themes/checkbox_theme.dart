import 'package:flutter/material.dart';

class Tcheckboxtheme{

  Tcheckboxtheme._();

  static CheckboxThemeData lightcheckboxTheme  = 
    CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)) ,
      checkColor: MaterialStateProperty.resolveWith((states)
      {
         if (states.contains(MaterialState.selected)) {
        return Colors.white ;}
        else { return Colors.black ;}
      }

    ),
     fillColor: MaterialStateProperty.resolveWith((states)
      {
         if (states.contains(MaterialState.selected)) {
        return Colors.blue ;}
        else { return Colors.transparent;}
      }

    ))
    ;

  static CheckboxThemeData darkcheckboxTheme  = 
    CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)) ,
      checkColor: MaterialStateProperty.resolveWith((states)
      {
         if (states.contains(MaterialState.selected)) {
        return Colors.white ;}
        else { return Colors.black ;}
      }

    ),
     fillColor: MaterialStateProperty.resolveWith((states)
      {
         if (states.contains(MaterialState.selected)) {
        return Colors.blue ;}
        else { return Colors.transparent;}
      }

    ));}