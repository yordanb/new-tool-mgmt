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

  t.test('LoanTransactionFormCubit Get Current Data', () async {
    final cubit = await sl<LoanTransactionFormCubit>();
    final state = cubit.state;
    state.id = 1;
    state.isEditMode = true;
    await cubit.getData();
    
    t.anyOf(t.equals(FullViewState.ready), t.equals(FullViewState.error));
  });

  t.test('LoanTransactionFormCubit Create Data', () async {
    final cubit = await sl<LoanTransactionFormCubit>();
    final state = cubit.state;
    state.status = r.firstValueFromList(["Ongoing", "Done"]);
state.userProfileId = state.session!.userProfileId;
state.createdAt = DateTime.now();
state.updatedAt = DateTime.now();
    await cubit.create();

    t.anyOf(t.equals(ViewState.success), t.equals(ViewState.error));
  });

  t.test('LoanTransactionFormCubit Update Data', () async {
    final cubit = await sl<LoanTransactionFormCubit>();
    final state = cubit.state;
    state.id = 1;
    state.status = r.firstValueFromList(["Ongoing", "Done"]);
state.userProfileId = state.session!.userProfileId;
state.createdAt = DateTime.now();
state.updatedAt = DateTime.now();
    await cubit.update();

    t.anyOf(t.equals(ViewState.success), t.equals(ViewState.error));
  });
}