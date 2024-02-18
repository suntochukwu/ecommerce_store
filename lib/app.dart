import 'package:flutter/material.dart';
//import 'package:get/get_navigation/get_navigation.dart';
import 'package:ocheap/features/screens/login/onboarding.dart';
import 'package:ocheap/utils/themes/themes.dart';

/*
 
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: Overploytheme.darkTheme,
        themeMode: ThemeMode.system,
        theme: Overploytheme.lightTheme,
        home: const onboardingScreen());
  }
}
*/

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: Overploytheme.darkTheme,
        themeMode: ThemeMode.system,
        theme: Overploytheme.lightTheme,
        home: OnboardingScreen()
        //routes: {
        //  '/onboarding': (context) => OnboardingScreen(),
        //  '/login': (context) => const loginscreen( providers),
        //}
        );
  }
}
