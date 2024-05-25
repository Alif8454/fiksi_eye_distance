import 'package:fiksi_eye_distance/util/screen_distance_detector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturesBox extends StatefulWidget {
  final String Features;
  final String iconpath;
  final bool powerOn;
  final String redirectPage;

  const FeaturesBox({
    Key? key,
    required this.Features,
    required this.iconpath,
    required this.powerOn,
    required this.redirectPage,
  }) : super(key: key);

  @override
  _FeaturesBoxState createState() => _FeaturesBoxState();
}

class _FeaturesBoxState extends State<FeaturesBox> {
  bool _powerOn = false;

  @override
  void initState() {
    super.initState();
    _powerOn = widget.powerOn;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.iconpath,
                    width: 50,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.Features,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.powerOn)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                      value: _powerOn,
                      onChanged: (value) {
                        setState(() {
                          _powerOn = value;
                        });
                        if (_powerOn) {
                          // Implement the function to detect screen distance and turn off the phone
                          // For example:
                          final ScreenDistanceDetector detector =
                              ScreenDistanceDetector();
                          detector.startDetection();
                        }
                      },
                      activeTrackColor: Color(0xff176B87),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        // Implement the function to redirect to different page
                        // For example:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AboutPage()),
                        // );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => widget.redirectPage),
                        // );
                      },
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
