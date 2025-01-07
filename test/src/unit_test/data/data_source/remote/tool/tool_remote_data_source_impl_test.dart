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

  t.test('ToolRemoteDataSourceImplTest Get All t.test', () async {
    var result = await sl<ToolRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<Tool>>());
  });

  t.test('ToolRemoteDataSourceImplTest Create', () async {
    var result = await sl<ToolRemoteDataSource>().create(
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<Tool?>());
  });

  t.test('ToolRemoteDataSourceImplTest Update', () async {
    await sl<ToolRemoteDataSource>().update(
      id: 1,
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
updatedAt : DateTime.now(),

    );
    List<Tool> result = await sl<ToolRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<Tool>>());
  });

  t.test('ToolRemoteDataSourceImplTest Delete', () async {
    await sl<ToolRemoteDataSource>().delete(1);
    List<Tool> result = await sl<ToolRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<Tool>>());
  });

  t.test('ToolRemoteDataSourceImplTest Delete All', () async {
    await sl<ToolRemoteDataSource>().deleteAll();
    List<Tool> result = await sl<ToolRemoteDataSource>().getAll();
    t.expect(result, t.isA<List<Tool>>());
  });
}