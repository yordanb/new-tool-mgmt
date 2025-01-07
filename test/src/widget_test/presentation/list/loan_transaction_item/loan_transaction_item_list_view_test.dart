import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mock_supabase_http_client/mock_supabase_http_client.dart';
import 'package:test/test.dart' as t;
import 'package:hyper_supabase/core.dart';
import 'package:flutter_test/flutter_test.dart';


RandomDataGenerator get r => sl<RandomDataGenerator>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  await configureDependencies();

late final SupabaseClient mockSupabase;
  late final MockSupabaseHttpClient mockHttpClient;
  // ignore: unused_local_variable
  late final AuthEntity session;

  t.setUpAll(() {
    HttpOverrides.global = null;

    session = AuthEntity(
      id: "zxfasfszz",
      userProfileId: 1,
      email: "user@demo.com",
    );

    mockHttpClient = MockSupabaseHttpClient();
    mockSupabase = SupabaseClient(
      'https://mock.supabase.co',
      'fakeAnonKey',
      httpClient: mockHttpClient,
    );

    if (sl.isRegistered<SupabaseClient>()) {
      sl.unregister<SupabaseClient>();
    }
    sl.registerLazySingleton<SupabaseClient>(() => mockSupabase);
  });

  testWidgets('LoanTransactionItemListView widget t.test', (WidgetTester tester) async {
    List<ThemeData> themes = [
      ThemeData.light(),
      ThemeData.dark(),
    ];

    List<Locale> locales = const [
      Locale('en'),
      Locale('es'),
    ];

    await tester.pumpWidget(
      AppProvider(
        child: MaterialApp(
          title: 'SuperApp',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('es'),
          ],
          locale: locales[0],
          theme: themes[0],
          home: const LoanTransactionItemListView(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    t.expect(find.byType(AppBar), findsOneWidget);
  });
}