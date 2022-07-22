import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rightprice/main.dart';
import 'package:rightprice/pages/home_page.dart';

void main() {
  group('Home page test', () {
    testWidgets(
      'Show first product name',
      (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: HomePage(),
        ));
        expect(find.text(product[0].name), findsOneWidget);

        await tester.tap(find.text('check'));
        await tester.pump();
        expect(find.text(product[1].name), findsOneWidget);

        await tester.tap(find.text('check'));
        await tester.pump();
        expect(find.text(product[2].name), findsOneWidget);
      },
    );
  });
}
