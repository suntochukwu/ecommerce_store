import 'package:flutter/material.dart';

class Thelperfunctions {
  static void snackbar(BuildContext context, message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static String truncatetext(String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return '${text.substring(0, maxlength)} ...';
    }
  }

  static bool isdarkmode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screensize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
