import 'package:flutter/material.dart';

// Mutable widget with createState method
class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

// Widget construction from StatefulWidget
class _TestPageState extends State<TestPage> {
  // List of background colors
  final List<Color> _colors = <Color>[
    Colors.deepOrange[100],
    Colors.deepOrange[200],
    Colors.deepOrange[300],
    Colors.deepOrange[400],
    Colors.deepOrange[500],
    Colors.deepOrange[600],
    Colors.deepOrange[700],
    Colors.deepOrange[800],
    Colors.deepOrange[900],
  ];
  // Variable for index in List of colors
  int _colorIndex = 0;
  // Setting background color
  Color _color = Colors.deepOrange;
  // Create visual layout structure
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: _color, // For testing
      body: Center(
        // Detector for tap gesture
        child: GestureDetector(
          // Change background color on tap
          onTap: () {
            setState(() {
              // If _colorIndex equals List items length set _colorIndex = 0 otherwize iterate it
              _colorIndex = _colorIndex == _colors.length - 1 ? _colorIndex = 0 : _colorIndex += 1;
              // Reset _color variable
              _color = _colors[_colorIndex];
            });
          },
          // Background container
          child: Container(
            // Decoration of container, setting with _color
            decoration: BoxDecoration(color: _color),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hey there,\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Please, tap screen anywhere!',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}