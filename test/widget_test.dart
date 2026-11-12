import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project/app.dart';

void main() {
  testWidgets('halaman utama tampil dan tombol menambah counter', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProjectApp());

    expect(find.text('Frontend siap dikembangkan'), findsOneWidget);
    expect(find.text('Klik aku: 0'), findsOneWidget);

    await tester.tap(find.text('Klik aku: 0'));
    await tester.pump();

    expect(find.text('Klik aku: 1'), findsOneWidget);
  });
}
