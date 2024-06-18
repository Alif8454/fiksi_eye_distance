import 'package:fiksi_eye_distance/features/home/widgets/features_box.dart';
import 'package:flutter/material.dart';
import 'package:fiksi_eye_distance/features/about/pages/about_page.dart';
import 'package:fiksi_eye_distance/features/turn_off_page.dart/pages/auto_turn_off_page.dart';
import 'package:fiksi_eye_distance/features/screen_distance/pages/screen_distance_page.dart';
import 'package:fiksi_eye_distance/features/privacy/pages/privacy_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List myFeatures = [
      [
        "Auto Turn Off",
        "assets/icons/icons8-power-50.png",
        true,
        const AutoTurnOffPage()
      ],
      [
        "Screen Distance",
        "assets/icons/icons8-eye-50 -green.png",
        false,
        const ScreenDistancePage()
      ],
      [
        "About",
        "assets/icons/icons8-about-48.png",
        false,
        const AboutPage(),
      ],
      [
        "Privacy",
        "assets/icons/icons8-privacy-48.png",
        false,
        const PrivacyPage(),
      ],
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 182, 182),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xff176B87),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: myFeatures.length,
                padding: const EdgeInsets.all(25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 4 / 4,
                ),
                itemBuilder: (context, index) {
                  return FeaturesBox(
                    features: myFeatures[index][0] as String,
                    iconpath: myFeatures[index][1] as String,
                    powerOn: myFeatures[index][2] as bool,
                    redirectPage: myFeatures[index][3] as Widget,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
