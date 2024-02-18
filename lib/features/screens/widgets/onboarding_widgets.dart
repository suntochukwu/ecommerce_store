import 'package:flutter/material.dart';
import 'package:ocheap/features/screens/login/login.dart';
import 'package:ocheap/utils/constants/colors.dart';
import 'package:ocheap/utils/constants/sizes.dart';
import 'package:ocheap/utils/device/device_utlities.dart';
import 'package:iconsax/iconsax.dart'; // Assuming this import is necessary for your project
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/helpers/helperfunctions.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key, this.controller}) : super(key: key);
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Tdeviceutils.getappbarHieght(),
      right: Tsizes.defaultspace,
      child: TextButton(
        onPressed: () {
          controller!.animateToPage(2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.elasticOut);
        },
        child: const Text('Skip'),
      ),
    );
  }
}

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({
    Key? key,
    required this.image,
    required this.string,
    required this.subtitle,
    required this.controller,
  }) : super(key: key);

  final String image, string, subtitle;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Tsizes.defaultspace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: Thelperfunctions.screenWidth(context) * 0.8,
            height: Thelperfunctions.screenHeight(context) * 0.6,
          ),
          Text(
            string,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Tsizes.m),
          Text(
            subtitle,
            style: ttextthemes.darktheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SmoothPageindic extends StatelessWidget {
  const SmoothPageindic({Key? key, required this.controller}) : super(key: key);

  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Tdeviceutils.getBottomnavigationbarHieght(),
      left: Tsizes.defaultspace,
      child: SmoothPageIndicator(
        controller: controller!, // Non-null assertion operator (!) used
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: Tcolors.primary,
          dotHeight: 6,
        ),
        onDotClicked: (int index) {
          controller!.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({Key? key, this.controller}) : super(key: key);

  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: Tsizes.defaultspace,
        bottom: Tdeviceutils.getBottomnavigationbarHieght(),
        child: ElevatedButton(
            onPressed: () {
              if (controller!.page!.toInt() == 2) {
                // Navigate to login screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              } else {
                int page = controller!.page!.toInt() + 1;
                controller!.animateToPage(
                  page,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: Colors.black),
            child: const Icon(
              Iconsax.arrow_right_3,
              color: Colors.white,
            )));
  }
}
