import 'package:flutter_test/flutter_test.dart';
import 'package:uts_fajriansyah_pratama/main.dart';

void main() {
  testWidgets('Onboarding tampil dan NEXT membuka halaman pesanan',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('All your favorites'), findsOneWidget);
    expect(find.text('NEXT'), findsOneWidget);

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();

    expect(find.text('Food Orders'), findsOneWidget);
    expect(find.text('Chicken Thai Biriyani'), findsOneWidget);
  });
}
