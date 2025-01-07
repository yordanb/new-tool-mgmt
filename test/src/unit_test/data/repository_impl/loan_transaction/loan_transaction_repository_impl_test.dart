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

  t.test('LoanTransactionRepositoryImplTest Get All t.test', () async {
    var result = await sl<LoanTransactionRepository>().getAll();
    t.expect(result, t.isA<List>());
  });

  t.test('LoanTransactionRepositoryImplTest Create', () async {
    var result = await sl<LoanTransactionRepository>().create(
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<LoanTransactionEntity?>());
  });

  t.test('LoanTransactionRepositoryImplTest Update', () async {
    await sl<LoanTransactionRepository>().update(
      id: 1,
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
updatedAt : DateTime.now(),

    );
  });

  t.test('LoanTransactionRepositoryImplTest Delete', () async {
    await sl<LoanTransactionRepository>().delete(1);
  });

  t.test('LoanTransactionRepositoryImplTest Delete All', () async {
    await sl<LoanTransactionRepository>().deleteAll();
  });
}