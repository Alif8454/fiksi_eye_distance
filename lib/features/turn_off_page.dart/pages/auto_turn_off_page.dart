import 'package:flutter/material.dart';

class AutoTurnOffPage extends StatefulWidget {
  const AutoTurnOffPage({super.key});

  @override
  State<AutoTurnOffPage> createState() => _AutoTurnOffPageState();
}

class _AutoTurnOffPageState extends State<AutoTurnOffPage> {
  bool _isAutoTurnOffEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Turn Off Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 10), // Add padding to the right
              child: Text('Auto Turn Off'),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10), // Add padding to the left
              child: Switch(
                value: _isAutoTurnOffEnabled,
                onChanged: (value) {
                  setState(() {
                    _isAutoTurnOffEnabled = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
