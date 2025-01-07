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

  t.test('LoanTransactionRemoteDataSourceImplTest Get All t.test', () async {
    var result = await sl<LoanTransactionRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<LoanTransaction>>());
  });

  t.test('LoanTransactionRemoteDataSourceImplTest Create', () async {
    var result = await sl<LoanTransactionRemoteDataSource>().create(
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<LoanTransaction?>());
  });

  t.test('LoanTransactionRemoteDataSourceImplTest Update', () async {
    await sl<LoanTransactionRemoteDataSource>().update(
      id: 1,
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
updatedAt : DateTime.now(),

    );
    List<LoanTransaction> result = await sl<LoanTransactionRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<LoanTransaction>>());
  });

  t.test('LoanTransactionRemoteDataSourceImplTest Delete', () async {
    await sl<LoanTransactionRemoteDataSource>().delete(1);
    List<LoanTransaction> result = await sl<LoanTransactionRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<LoanTransaction>>());
  });

  t.test('LoanTransactionRemoteDataSourceImplTest Delete All', () async {
    await sl<LoanTransactionRemoteDataSource>().deleteAll();
    List<LoanTransaction> result = await sl<LoanTransactionRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<LoanTransaction>>());
  });
}