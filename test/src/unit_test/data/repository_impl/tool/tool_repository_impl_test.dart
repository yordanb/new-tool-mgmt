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

  t.test('ToolRepositoryImplTest Get All t.test', () async {
    var result = await sl<ToolRepository>().getAll();
    t.expect(result, t.isA<List>());
  });

  t.test('ToolRepositoryImplTest Create', () async {
    var result = await sl<ToolRepository>().create(
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<ToolEntity?>());
  });

  t.test('ToolRepositoryImplTest Update', () async {
    await sl<ToolRepository>().update(
      id: 1,
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
updatedAt : DateTime.now(),

    );
  });

  t.test('ToolRepositoryImplTest Delete', () async {
    await sl<ToolRepository>().delete(1);
  });

  t.test('ToolRepositoryImplTest Delete All', () async {
    await sl<ToolRepository>().deleteAll();
  });
}