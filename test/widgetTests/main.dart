// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mindblown_sign_in_up_flutter/main.dart';
import 'package:mindblown_sign_in_up_flutter/pages/login.page.dart';
import 'package:mindblown_sign_in_up_flutter/pages/welcome.page.dart';

void main() {
  testWidgets('Login button takes user to login page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    final welcomePageFinder = find.byType(WelcomePage);
    final loginPageFinder = find.byType(LoginPage);
    final loginButtonFinder = find.descendant(of: welcomePageFinder, matching: find.byKey(Key('Login button')));

    expect(welcomePageFinder, findsOneWidget);
    expect(loginPageFinder, findsNothing);
    expect(loginButtonFinder, findsOneWidget);

    await tester.tap(loginButtonFinder);
    await tester.pumpAndSettle();

    expect(loginPageFinder, findsOneWidget);
    expect(welcomePageFinder, findsNothing);
  });
}
