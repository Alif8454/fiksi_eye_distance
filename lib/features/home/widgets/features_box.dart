import 'package:flutter/material.dart';

class FeaturesBox extends StatelessWidget {
  final String features;
  final String iconpath;
  final bool powerOn;
  final Widget redirectPage;

  const FeaturesBox({
    super.key,
    required this.features,
    required this.iconpath,
    required this.powerOn,
    required this.redirectPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => redirectPage),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconpath, height: 60),
            const SizedBox(height: 10),
            Text(
              features,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            if (powerOn)
              const Icon(
                Icons.power,
                color: Colors.green,
              ),
          ],
        ),
      ),
    );
  }
}
