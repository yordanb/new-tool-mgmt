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

  t.test('GetAllApplicationConfigUseCaseTest Get All t.test', () async {
    var result = await sl<GetAllApplicationConfigUseCase>().call();
    t.expect(result, t.isA<List>());
  });

  t.test('GetApplicationConfigUseCaseTest Get t.test', () async {
    var result = await sl<GetApplicationConfigUseCase>().call(id: 1);
    t.expect(result, t.isA<ApplicationConfigEntity?>());
  });

  t.test('CreateApplicationConfigUseCaseTest Create', () async {
    await sl<CreateApplicationConfigUseCase>().call(
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
createdAt : DateTime.now(),

    );
  });

  t.test('UpdateApplicationConfigUseCaseTest Update', () async {
    await sl<UpdateApplicationConfigUseCase>().call(
      id: 1,
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
updatedAt : DateTime.now(),

    );
  });

  t.test('DeleteApplicationConfigUseCaseTest Delete', () async {
    await sl<DeleteApplicationConfigUseCase>().call(1);
  });

  t.test('DeleteAllApplicationConfigUseCaseTest Delete All', () async {
    await sl<DeleteAllApplicationConfigUseCase>().call();
  });
}