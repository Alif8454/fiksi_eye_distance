import 'package:fiksi_eye_distance/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff176B87),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'assets/img/eye_logo.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 28),
            GFButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false,
                );
              },
              text: "Get Started",
              shape: GFButtonShape.pills,
              blockButton: true,
              color: const Color(0xff176B87),
            ),
          ],
        ),
      ),
    );
  }
}
