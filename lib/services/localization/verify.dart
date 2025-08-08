import "package:apexo/services/localization/en.dart";
import "package:apexo/services/localization/es.dart";
import "package:apexo/services/localization/ar.dart";
import 'package:apexo/services/localization/ru.dart';
import 'package:apexo/services/localization/uz.dart';

// Localization Sync Tool
class LocalizationSync {
  static void syncLocales(
      Map<String, String> source, Map<String, String> target) {
    source.forEach((key, value) {
      if (!target.containsKey(key)) {
        print("Missing key: $key");
      }
    });

    final keysToRemove =
        target.keys.where((key) => !source.containsKey(key)).toList();
    for (var key in keysToRemove) {
      print("Extra key: $key");
    }
  }
}

void main() {
  En en = En();
  Es es = Es();
  Ar ar = Ar();
  Uz uz = Uz();
  Ru ru = Ru();

  // Sync Spanish localization with English
  LocalizationSync.syncLocales(en.dictionary, es.dictionary);
  LocalizationSync.syncLocales(en.dictionary, ar.dictionary);

  LocalizationSync.syncLocales(en.dictionary, uz.dictionary);
  LocalizationSync.syncLocales(en.dictionary, ru.dictionary);
}
