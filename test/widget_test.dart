import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing_task/main.dart';
import 'package:testing_task/view/test_page.dart';

void main() {
  testWidgets('Change colors test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(TestApp());

    // Verify that all text is here
    expect(find.text('Hey there'), findsOneWidget);
    expect(find.text('Please, tap screen anywhere!'), findsOneWidget);
  });
}
