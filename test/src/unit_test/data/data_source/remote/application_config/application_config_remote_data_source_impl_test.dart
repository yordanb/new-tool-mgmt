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

  t.test('ApplicationConfigRemoteDataSourceImplTest Get All t.test', () async {
    var result = await sl<ApplicationConfigRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<ApplicationConfig>>());
  });

  t.test('ApplicationConfigRemoteDataSourceImplTest Create', () async {
    var result = await sl<ApplicationConfigRemoteDataSource>().create(
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<ApplicationConfig?>());
  });

  t.test('ApplicationConfigRemoteDataSourceImplTest Update', () async {
    await sl<ApplicationConfigRemoteDataSource>().update(
      id: 1,
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
updatedAt : DateTime.now(),

    );
    List<ApplicationConfig> result = await sl<ApplicationConfigRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<ApplicationConfig>>());
  });

  t.test('ApplicationConfigRemoteDataSourceImplTest Delete', () async {
    await sl<ApplicationConfigRemoteDataSource>().delete(1);
    List<ApplicationConfig> result = await sl<ApplicationConfigRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<ApplicationConfig>>());
  });

  t.test('ApplicationConfigRemoteDataSourceImplTest Delete All', () async {
    await sl<ApplicationConfigRemoteDataSource>().deleteAll();
    List<ApplicationConfig> result = await sl<ApplicationConfigRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<ApplicationConfig>>());
  });
}