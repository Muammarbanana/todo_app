import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/app/app.dart';

import 'package:todo_app/features/features.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
