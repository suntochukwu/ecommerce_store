import 'package:flutter/material.dart';
import 'package:ocheap/features/screens/login/login.dart';
import 'package:ocheap/utils/constants/sizes.dart';
import 'package:ocheap/utils/themes/custom_themes/text_theme.dart';

class SuccesfulAccountCreation extends StatelessWidget {
  const SuccesfulAccountCreation({super.key});

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
            Text(' Your account has been created successfully!',
                style: ttextthemes.darktheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: Tsizes.spacebtwitems),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Continue'))),
            const SizedBox(height: Tsizes.spacebtwitems)
          ])),
    );
  }
}
