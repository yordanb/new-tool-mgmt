import 'package:hyper_supabase/core.dart';

extension AppQueueExtension on AppQueue {
  AppQueueEntity toEntity() {
    return AppQueueEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppQueueListExtension on List<AppQueue> {
  List<AppQueueEntity> toEntityList() {
    return this
        .map((model) => AppQueueEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
