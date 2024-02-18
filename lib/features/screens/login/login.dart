import 'package:flutter/material.dart';
import 'package:ocheap/common/spacing_styles.dart';
import 'package:ocheap/features/screens/widgets/login_widgets.dart';
import 'package:ocheap/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: Tspacing.paddingwithappbarhieght,
                child: Column(children: [
                  LoginHeader(),
                  //spacer
                  SizedBox(height: Tsizes.spacebtwitems),
                  //EMAIL
                  LoginForm(),
                  //spacer
                  SizedBox(height: Tsizes.spacebtwitems),
                  //divider
                  LoginDivider(dividertext: 'or sign in with'),
                  //social media login footer
                  LoginFooter()
                ]))));
  }
}
