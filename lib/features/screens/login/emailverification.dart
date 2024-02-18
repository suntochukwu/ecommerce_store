import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:ocheap/features/screens/login/login.dart';
import 'package:ocheap/utils/constants/sizes.dart';
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                icon: const Icon(Icons.close))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const Center(
                child: Image(image: AssetImage('assets/emailsuc.jpeg'))),
            const SizedBox(height: Tsizes.spacebtwitems),
            Text(' Verify your email address',
                style: ttextthemes.darktheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: Tsizes.spacebtwitems),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: SizedBox(
                  // width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        AwesomeDialog(
                          width: 500,
                          context: context,
                          animType: AnimType.scale,
                          dialogType: DialogType.success,
                          body: Center(
                            child: Text(
                              'Account succesfully created!',
                              style: ttextthemes.darktheme.headlineMedium,
                            ),
                          ),
                          title: 'Account succesful created!',
                          desc: '',
                          btnOkOnPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                        ).show();
                        /*
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SuccesfulAccountCreation()));
                     
                     
                     
                  */
                      },
                      child: const Text('Continue'))),
            ),
            const SizedBox(height: Tsizes.spacebtwitems),
            TextButton(onPressed: () {}, child: const Text('Resend email'))
          ])),
    );
  }
}
