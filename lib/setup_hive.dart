import 'package:hive_flutter/hive_flutter.dart';
import 'package:school_management/infrastructure/core/hive_box_names.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();
  await Hive.openBox(BoxNames.settingsBox);
}
