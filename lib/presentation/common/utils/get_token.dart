import 'package:hive_flutter/hive_flutter.dart';
import 'package:school_management/infrastructure/core/hive_box_names.dart';

String getToken() {
  return Hive.box(BoxNames.settingsBox).get(BoxKeys.tokenKey).toString();
}
