import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/config/localization_manager/localization_manager.dart';

class LocalizationManagerImpl extends LocalizationManager {
  final List<Locale> locales;

  LocalizationManagerImpl({
    required this.locales,
  });
}
