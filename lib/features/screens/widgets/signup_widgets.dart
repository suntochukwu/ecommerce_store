import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ocheap/features/screens/login/emailverification.dart';
import 'package:ocheap/utils/constants/sizes.dart';
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';

class TermsConditionsWidget extends StatelessWidget {
  const TermsConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
          Checkbox(value: true, onChanged: (bool? value) {}),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: 'I agree to ', style: ttextthemes.darktheme.bodySmall),
            TextSpan(
              text: 'privacy policy',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: ttextthemes.darktheme.bodyMedium!.apply(
                decoration: TextDecoration.underline,
                decorationColor: Colors.grey,
              ),
            ),
            TextSpan(text: ' and ', style: ttextthemes.darktheme.bodySmall),
            TextSpan(
                text: 'Terms of use',
                recognizer: TapGestureRecognizer()..onTap = () {},
                style: ttextthemes.darktheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey))
          ]))
        ])
      ],
    );
  }
}

class SignupHeader extends StatelessWidget {
  const SignupHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Let's create your account! ",
            style: ttextthemes.darktheme.headlineMedium,
            textAlign: TextAlign.center),
      ],
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(children: [
            Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  labelStyle: ttextthemes.darktheme.bodyMedium!
                      .apply(color: Colors.grey),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(width: Tsizes.spacebtwitems),
            Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: ttextthemes.darktheme.bodyMedium!
                      .apply(color: Colors.grey),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
            )
          ]),
          const SizedBox(height: Tsizes.spacebtwitems),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
              labelStyle:
                  ttextthemes.darktheme.bodyMedium!.apply(color: Colors.grey),
              prefixIcon: const Icon(Icons.person_pin),
            ),
          ),
          const SizedBox(height: Tsizes.spacebtwitems),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'email',
              labelStyle:
                  ttextthemes.darktheme.bodyMedium!.apply(color: Colors.grey),
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          const SizedBox(height: Tsizes.spacebtwitems),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'phone number',
                labelStyle:
                    ttextthemes.darktheme.bodyMedium!.apply(color: Colors.grey),
                prefixIcon: const Icon(Icons.phone_android)),
          ),
          const SizedBox(height: Tsizes.spacebtwitems),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle:
                    ttextthemes.darktheme.bodyMedium!.apply(color: Colors.grey),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: Tsizes.spacebtwsections),
          const TermsConditionsWidget(),
          const SizedBox(height: Tsizes.spacebtwsections),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: SizedBox(
                // width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EmailVerificationScreen()));
                    },
                    child: const Text('Create account'))),
          ),
        ],
      ),
    );
  }
}
