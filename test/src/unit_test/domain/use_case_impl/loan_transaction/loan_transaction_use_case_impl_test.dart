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

  t.test('GetAllLoanTransactionUseCaseTest Get All t.test', () async {
    var result = await sl<GetAllLoanTransactionUseCase>().call();
    t.expect(result, t.isA<List>());
  });

  t.test('GetLoanTransactionUseCaseTest Get t.test', () async {
    var result = await sl<GetLoanTransactionUseCase>().call(id: 1);
    t.expect(result, t.isA<LoanTransactionEntity?>());
  });

  t.test('CreateLoanTransactionUseCaseTest Create', () async {
    await sl<CreateLoanTransactionUseCase>().call(
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
createdAt : DateTime.now(),

    );
  });

  t.test('UpdateLoanTransactionUseCaseTest Update', () async {
    await sl<UpdateLoanTransactionUseCase>().call(
      id: 1,
      status : r.firstValueFromList(["Ongoing", "Done"]),
userProfileId : session.userProfileId,
updatedAt : DateTime.now(),

    );
  });

  t.test('DeleteLoanTransactionUseCaseTest Delete', () async {
    await sl<DeleteLoanTransactionUseCase>().call(1);
  });

  t.test('DeleteAllLoanTransactionUseCaseTest Delete All', () async {
    await sl<DeleteAllLoanTransactionUseCase>().call();
  });
}