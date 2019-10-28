import 'package:flutter/material.dart';
// Adding view with StatefulWidget
import 'view/test_page.dart';

// Program entry
void main() => runApp(TestApp());

// Immutable StatelessWidget widget
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      home: TestPage(),
    );
  }
}