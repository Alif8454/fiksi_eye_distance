import 'package:fiksi_eye_distance/pages/about.dart';
import 'package:fiksi_eye_distance/pages/auto-turn-off.dart';
import 'package:fiksi_eye_distance/pages/screen-distance.dart';
import 'package:fiksi_eye_distance/pages/privacy.dart'; // Import the privacy.dart file
import 'package:fiksi_eye_distance/util/feature_box.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List myFeatures = [
    [
      "Auto Turn Off",
      "lib/icons/icons8-power-50.png",
      true,
      Auto_Turn_Off_Page()
    ],
    [
      "Screen Distance",
      "lib/icons/icons8-eye-50 -green.png",
      false,
      Screen_Distance_Page()
    ],
    ["About", "lib/icons/icons8-about-48.png", false, AboutPage()],
    [
      "Privacy",
      "lib/icons/icons8-privacy-48.png",
      false,
      PrivacyPage()
    ], // Corrected line
  ];

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 25.0; // Define the variable

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 182, 182),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dashboard
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 50.0, // Increase font size
                    color: Color(0xff176B87), // Change color
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
                childAspectRatio: 1 / 1.3,
              ),
              itemBuilder: (context, index) {
                return FeaturesBox(
                  Features: myFeatures[index][0],
                  iconpath: myFeatures[index][1],
                  powerOn: myFeatures[index][2],
                  redirectPage: myFeatures[index][3],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
