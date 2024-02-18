import 'package:flutter/material.dart';
import 'package:ocheap/features/screens/login/signup.dart';
import 'package:ocheap/utils/constants/image_strings.dart';
import 'package:ocheap/utils/constants/sizes.dart';
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ocheap/utils/constants/colors.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage(Timages.googlelogo),
                height: Tsizes.iconl,
                width: Tsizes.iconl),
            iconSize: Tsizes.iconl),
        IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage(Timages.facebooklogo),
                height: Tsizes.iconl,
                width: Tsizes.iconl),
            iconSize: Tsizes.iconl),
        IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage(Timages.applelogo),
                height: Tsizes.iconl,
                width: Tsizes.iconl),
            iconSize: Tsizes.iconl)
      ],
    );
  }
}

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key, required this.dividertext});
  final String dividertext;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Flexible(
          child: Divider(
              color: Tcolors.primary,
              thickness: 0.5,
              indent: 60,
              endIndent: 5)),
      Text(
        dividertext,
        style: ttextthemes.darktheme.headlineSmall,
        textAlign: TextAlign.center,
      ),
      const Flexible(
          child: Divider(
              color: Tcolors.primary, thickness: 0.5, indent: 5, endIndent: 60))
    ]);
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: Tsizes.spacebtwitems),
        child: Form(
            child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: 'username',
                labelStyle: ttextthemes.darktheme.bodyMedium!
                    .apply(color: Colors.grey)),
          ),
          const SizedBox(height: Tsizes.spacebtwitems),
          //PASSWORD
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              labelStyle:
                  ttextthemes.darktheme.bodyMedium!.apply(color: Colors.grey),
              labelText: 'password',
            ),
          ),
          //divider
          const SizedBox(height: Tsizes.spacebtwitems),
          //REMEMBER ME
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Checkbox(value: true, onChanged: (bool? value) {}),
              Text('Remember me', style: ttextthemes.darktheme.bodySmall)
            ]),
            TextButton(
                onPressed: () {},
                child: Text('forgot password?',
                    style: ttextthemes.darktheme.bodySmall))
          ]),

          //sign in button
          const SizedBox(height: Tsizes.spacebtwsections),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: SizedBox(
                // width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Sign in'))),
          ),
          //create account
          const SizedBox(height: Tsizes.spacebtwitems),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: SizedBox(
                //width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: const Text('create account'))),
          )
        ])));
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Image(
        image: AssetImage(Timages.onboardingimage),
        height: 50,
        alignment: Alignment.topCenter,
      ),
      Text(
        'Welcome back!',
        style: ttextthemes.darktheme.headlineLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: Tsizes.m),
      Text(
        'Discover unmatched marketing opportunites at the tip of your fingers',
        style: ttextthemes.darktheme.headlineMedium,
        textAlign: TextAlign.start,
      )
    ]);
  }
}
