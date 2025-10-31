// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_counter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PointsCounterApp());

    // SplashScreen shows for 3 seconds; advance time to navigate to HomePage.
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    // Verify HomePage shows Team A and Team B and initial scores 0.
    expect(find.text('Team A'), findsOneWidget);
    expect(find.text('Team B'), findsOneWidget);
    // Two score texts for both teams
    expect(find.text('0'), findsNWidgets(2));

    // Tap 'Add 1 Point' for Team A and verify score increments.
    final addButtons = find.widgetWithText(ElevatedButton, 'Add 1 Point');
    expect(addButtons, findsNWidgets(2));
    await tester.tap(addButtons.first);
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
