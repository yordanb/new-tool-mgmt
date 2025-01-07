import 'package:flutter/foundation.dart';
import 'package:hyper_supabase/core.dart';
/*

*** Deep Links ***
adb shell am start -a android.intent.action.VIEW -d "x9codeid://open.my.app/test"

*** App Links ***
To test AppLink, you need to set up the app link in the manifest, see the documentation here: 
https://docs.flutter.dev/cookbook/navigation/set-up-app-links
adb shell am start -a android.intent.action.VIEW -d "https://9code.id/test"

*/

class AppRouterDeppLink {
  Future<Uri> handle(Uri uri) async {
    printo("[DeepLink] handle: $uri");
    if (uri.toString().endsWith("/test")) {
      router.replaceAll([RegisterRoute()]);
    }
    return SynchronousFuture(uri);
  }
}
