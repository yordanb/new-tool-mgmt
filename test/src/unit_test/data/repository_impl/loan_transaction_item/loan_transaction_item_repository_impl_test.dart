import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mock_supabase_http_client/mock_supabase_http_client.dart';
import 'package:test/test.dart' as t;
import 'package:hyper_supabase/core.dart';


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

  t.test('LoanTransactionItemRepositoryImplTest Get All t.test', () async {
    var result = await sl<LoanTransactionItemRepository>().getAll();
    t.expect(result, t.isA<List>());
  });

  t.test('LoanTransactionItemRepositoryImplTest Create', () async {
    var result = await sl<LoanTransactionItemRepository>().create(
      loanTransactionId : await r.randomId('loan_transaction'),
toolId : await r.randomId('tool'),
qty : r.randomDouble(),
memo : r.randomWords(),
status : r.firstValueFromList(["Borrowed", "Returned", "Damaged", "Lost"]),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<LoanTransactionItemEntity?>());
  });

  t.test('LoanTransactionItemRepositoryImplTest Update', () async {
    await sl<LoanTransactionItemRepository>().update(
      id: 1,
      loanTransactionId : await r.randomId('loan_transaction'),
toolId : await r.randomId('tool'),
qty : r.randomDouble(),
memo : r.randomWords(),
status : r.firstValueFromList(["Borrowed", "Returned", "Damaged", "Lost"]),
updatedAt : DateTime.now(),

    );
  });

  t.test('LoanTransactionItemRepositoryImplTest Delete', () async {
    await sl<LoanTransactionItemRepository>().delete(1);
  });

  t.test('LoanTransactionItemRepositoryImplTest Delete All', () async {
    await sl<LoanTransactionItemRepository>().deleteAll();
  });
}