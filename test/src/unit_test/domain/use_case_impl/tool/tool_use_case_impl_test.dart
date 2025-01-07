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

  t.test('GetAllToolUseCaseTest Get All t.test', () async {
    var result = await sl<GetAllToolUseCase>().call();
    t.expect(result, t.isA<List>());
  });

  t.test('GetToolUseCaseTest Get t.test', () async {
    var result = await sl<GetToolUseCase>().call(id: 1);
    t.expect(result, t.isA<ToolEntity?>());
  });

  t.test('CreateToolUseCaseTest Create', () async {
    await sl<CreateToolUseCase>().call(
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
createdAt : DateTime.now(),

    );
  });

  t.test('UpdateToolUseCaseTest Update', () async {
    await sl<UpdateToolUseCase>().call(
      id: 1,
      name : r.randomName(),
description : r.randomDescription(),
imageUrl : r.randomImageUrl(),
updatedAt : DateTime.now(),

    );
  });

  t.test('DeleteToolUseCaseTest Delete', () async {
    await sl<DeleteToolUseCase>().call(1);
  });

  t.test('DeleteAllToolUseCaseTest Delete All', () async {
    await sl<DeleteAllToolUseCase>().call();
  });
}