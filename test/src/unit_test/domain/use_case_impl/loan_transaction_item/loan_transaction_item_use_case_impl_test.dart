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

  t.test('GetAllLoanTransactionItemUseCaseTest Get All t.test', () async {
    var result = await sl<GetAllLoanTransactionItemUseCase>().call();
    t.expect(result, t.isA<List>());
  });

  t.test('GetLoanTransactionItemUseCaseTest Get t.test', () async {
    var result = await sl<GetLoanTransactionItemUseCase>().call(id: 1);
    t.expect(result, t.isA<LoanTransactionItemEntity?>());
  });

  t.test('CreateLoanTransactionItemUseCaseTest Create', () async {
    await sl<CreateLoanTransactionItemUseCase>().call(
      loanTransactionId : await r.randomId('loan_transaction'),
toolId : await r.randomId('tool'),
qty : r.randomDouble(),
memo : r.randomWords(),
status : r.firstValueFromList(["Borrowed", "Returned", "Damaged", "Lost"]),
createdAt : DateTime.now(),

    );
  });

  t.test('UpdateLoanTransactionItemUseCaseTest Update', () async {
    await sl<UpdateLoanTransactionItemUseCase>().call(
      id: 1,
      loanTransactionId : await r.randomId('loan_transaction'),
toolId : await r.randomId('tool'),
qty : r.randomDouble(),
memo : r.randomWords(),
status : r.firstValueFromList(["Borrowed", "Returned", "Damaged", "Lost"]),
updatedAt : DateTime.now(),

    );
  });

  t.test('DeleteLoanTransactionItemUseCaseTest Delete', () async {
    await sl<DeleteLoanTransactionItemUseCase>().call(1);
  });

  t.test('DeleteAllLoanTransactionItemUseCaseTest Delete All', () async {
    await sl<DeleteAllLoanTransactionItemUseCase>().call();
  });
}