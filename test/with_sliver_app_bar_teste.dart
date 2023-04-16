import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:working_slivers/app/slivers/with_sliver_app_bar_page.dart';

void main() {
  testWidgets('Teste de Sliver appBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: WithSliverAppBarPage()));
    await tester.pump();

    expect(find.text('Sliver appBar'), findsOneWidget);
    expect(find.byType(SliverAppBar), findsOneWidget);
    expect(find.byType(SliverToBoxAdapter), findsOneWidget);
    expect(find.byType(Text), findsWidgets);
  });
}
