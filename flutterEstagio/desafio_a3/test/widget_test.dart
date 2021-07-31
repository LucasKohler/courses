// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:desafio_a3/main.dart';

void main() {
  testWidgets('Counter1 increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    const button1Key= Key('button1');
    const textButton1Key = Key('textButton1');

    var button1Text = find.byKey(textButton1Key).evaluate().single.widget as Text;
    var button1 = find.byKey(button1Key);

    expect(button1Text.data, '0');

    await tester.tap(button1);
    await tester.pump();

    button1Text = find.byKey(textButton1Key).evaluate().single.widget as Text;

    expect(button1Text.data, '1');
  });

  testWidgets('Counter2 increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    const button2Key= Key('button2');
    const textButton2Key = Key('textButton2');

    var button2Text = find.byKey(textButton2Key).evaluate().single.widget as Text;
    var button2 = find.byKey(button2Key);

    expect(button2Text.data, '0');

    await tester.tap(button2);
    await tester.pump();

    button2Text = find.byKey(textButton2Key).evaluate().single.widget as Text;

    expect(button2Text.data, '1');
  });
}
