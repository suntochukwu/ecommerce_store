/*
import 'package:flutter/material.dart';

class OnboardingController extends PageController {
  int _currentPageIndex = 0;

  final PageController _onboardingpageController = PageController();

  int get currentPageIndex => _currentPageIndex;

  PageController get onboardingpageController => _onboardingpageController;

  void dotNavigationClick(int index) {
    _currentPageIndex = index;
    _onboardingpageController.jumpToPage(index);
    notifyListeners();
  }

  void updatePageIndex(int index) {
    _currentPageIndex = index + 1;
    notifyListeners();
  }

  @override
  void nextPage(BuildContext context) {
    if (_currentPageIndex == 2) {
      // Navigate to login screen
      // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    } else {
      int page = _currentPageIndex + 1;
      _onboardingpageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void skipButton() {
    _onboardingpageController.jumpToPage(2);
    notifyListeners();
  }
}
*/