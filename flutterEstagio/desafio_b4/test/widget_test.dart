// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/sumApp.dart';

void main() {
  testWidgets('sumApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SumApp());
    var textField1 = find.byKey(Key('textField1'));
    var textField2 = find.byKey(Key('textField2'));

    expect(find.text('0'), findsWidgets);

    await tester.enterText(textField1, '7');
    await tester.enterText(textField2, '4');

    await tester.tap(find.byKey(Key('addButton')));
    await tester.pump();

    var sumText = find.byKey(Key('addText')).evaluate().single.widget as Text;
    expect(sumText.data, '11');
  });
}
