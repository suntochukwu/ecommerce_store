import 'package:flutter/material.dart';
import 'package:ocheap/common/spacing_styles.dart';
import 'package:ocheap/features/screens/widgets/login_widgets.dart';
import 'package:ocheap/features/screens/widgets/signup_widgets.dart';
import 'package:ocheap/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const SingleChildScrollView(
          padding: Tspacing.paddingwithappbarhieght,
          child: Column(children: [
            SignupHeader(),
            SizedBox(height: Tsizes.spacebtwitems),
            SignupForm(),
            SizedBox(height: Tsizes.spacebtwitems),
            LoginDivider(dividertext: 'or sign up with'),
            SizedBox(height: Tsizes.spacebtwitems),
            LoginFooter(),
          ]),
        ));
  }
}
