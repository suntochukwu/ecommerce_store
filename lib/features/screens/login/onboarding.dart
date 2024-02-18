import 'package:flutter/material.dart';
import 'package:ocheap/utils/constants/image_strings.dart';
import 'package:ocheap/features/screens/widgets/onboarding_widgets.dart';
import 'package:ocheap/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            Onboardingpage(
                controller: _controller,
                image: Timages.onboardingimage,
                string: Tstrings.welcome_page,
                subtitle: Tstrings.purpose),
            Onboardingpage(
                controller: _controller,
                image: Timages.onboardingimage2,
                string: Tstrings.onboardingtile2,
                subtitle: Tstrings.onboardingtile2text),
            Onboardingpage(
                controller: _controller,
                image: Timages.onboardingimage3,
                string: Tstrings.onboardingtile3,
                subtitle: Tstrings.onboardingtile3text)
          ],
        ),
        OnboardingNextButton(controller: _controller),
        SkipButton(controller: _controller),
        SmoothPageindic(
          controller: _controller,
        )
      ]),
    );
  }
}
