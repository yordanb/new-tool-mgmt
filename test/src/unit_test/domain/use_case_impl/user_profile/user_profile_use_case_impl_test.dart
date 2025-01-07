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

  t.test('GetAllUserProfileUseCaseTest Get All t.test', () async {
    var result = await sl<GetAllUserProfileUseCase>().call();
    t.expect(result, t.isA<List>());
  });

  t.test('GetUserProfileUseCaseTest Get t.test', () async {
    var result = await sl<GetUserProfileUseCase>().call(id: 1);
    t.expect(result, t.isA<UserProfileEntity?>());
  });

  t.test('CreateUserProfileUseCaseTest Create', () async {
    await sl<CreateUserProfileUseCase>().call(
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
  });

  t.test('UpdateUserProfileUseCaseTest Update', () async {
    await sl<UpdateUserProfileUseCase>().call(
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

  t.test('DeleteUserProfileUseCaseTest Delete', () async {
    await sl<DeleteUserProfileUseCase>().call(1);
  });

  t.test('DeleteAllUserProfileUseCaseTest Delete All', () async {
    await sl<DeleteAllUserProfileUseCase>().call();
  });
}