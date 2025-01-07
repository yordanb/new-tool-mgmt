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

  t.test('ApplicationConfigRepositoryImplTest Get All t.test', () async {
    var result = await sl<ApplicationConfigRepository>().getAll();
    t.expect(result, t.isA<List>());
  });

  t.test('ApplicationConfigRepositoryImplTest Create', () async {
    var result = await sl<ApplicationConfigRepository>().create(
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<ApplicationConfigEntity?>());
  });

  t.test('ApplicationConfigRepositoryImplTest Update', () async {
    await sl<ApplicationConfigRepository>().update(
      id: 1,
      appMode : r.firstValueFromList(["Production", "Development", "Maintenance"]),
companyName : r.randomName(),
address : r.randomAddress(),
phoneNumber : r.randomPhone(),
updatedAt : DateTime.now(),

    );
  });

  t.test('ApplicationConfigRepositoryImplTest Delete', () async {
    await sl<ApplicationConfigRepository>().delete(1);
  });

  t.test('ApplicationConfigRepositoryImplTest Delete All', () async {
    await sl<ApplicationConfigRepository>().deleteAll();
  });
}