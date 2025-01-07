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

  t.test('UserProfileRepositoryImplTest Get All t.test', () async {
    var result = await sl<UserProfileRepository>().getAll();
    t.expect(result, t.isA<List>());
  });

  t.test('UserProfileRepositoryImplTest Create', () async {
    var result = await sl<UserProfileRepository>().create(
      imageUrl : r.randomImageUrl(),
userProfileName : r.randomName(),
gender : r.firstValueFromList(["Male", "Female"]),
email : r.randomEmail(),
mobileNumber : r.randomPhone(),
fcmToken : r.randomWords(),
password : r.randomPassword(),
role : r.firstValueFromList(["Admin", "User"]),
isActive : r.randomBoolean(),
createdAt : DateTime.now(),

    );
    t.expect(result, t.isA<UserProfileEntity?>());
  });

  t.test('UserProfileRepositoryImplTest Update', () async {
    await sl<UserProfileRepository>().update(
      id: 1,
      imageUrl : r.randomImageUrl(),
userProfileName : r.randomName(),
gender : r.firstValueFromList(["Male", "Female"]),
email : r.randomEmail(),
mobileNumber : r.randomPhone(),
fcmToken : r.randomWords(),
password : r.randomPassword(),
role : r.firstValueFromList(["Admin", "User"]),
isActive : r.randomBoolean(),
updatedAt : DateTime.now(),

    );
  });

  t.test('UserProfileRepositoryImplTest Delete', () async {
    await sl<UserProfileRepository>().delete(1);
  });

  t.test('UserProfileRepositoryImplTest Delete All', () async {
    await sl<UserProfileRepository>().deleteAll();
  });
}