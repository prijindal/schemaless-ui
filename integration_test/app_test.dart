import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:schemaless/db/database.dart';
import 'package:schemaless/pages/servers/servers_screen.dart';
import 'package:schemaless/router/app_router.dart';

class MockStackRouter extends Mock implements StackRouter {}

class FakePageRouteInfo extends Fake implements PageRouteInfo {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakePageRouteInfo());
  });
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('Create a todo and verify that it got created', (tester) async {
      final mockStackRouter = MockStackRouter();
      when(() => mockStackRouter.pushPath(any())).thenAnswer((_) async {
        return null;
      });
      when(() => mockStackRouter.currentUrl).thenReturn('/todos');
      // Load app widget.
      GetIt.I.registerSingleton<SharedDatabase>(SharedDatabase.local());
      GetIt.I.registerSingleton<AppRouter>(AppRouter());
      await GetIt.I.allReady();
      await tester.pumpWidget(
        MaterialApp(
          title: 'Routing Test',
          home: StackRouterScope(
            controller: mockStackRouter,
            stateHash: 0,
            child: ServersScreen(),
          ),
        ),
      );

      // Verify the counter starts at 0.
      expect(find.text('Servers'), findsAtLeastNWidgets(1));

      await tester.pumpAndSettle();
    });
  });
}
