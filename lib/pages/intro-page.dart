import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// Bagian Screen Splash
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
            Text(
              'Welcome to ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff176B87),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),
            // logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/img/Eye Distance Logo.png',
                height: 240,
              ),
            ),
            SizedBox(height: 28),

            //button
            GFButton(
              onPressed: () {},
              text: "Get Started",
              shape: GFButtonShape.pills,
              blockButton: true,
              color: Color(0xff176B87), // Add this line
            ),
          ],
        ),
      ),
    );
  }
}
