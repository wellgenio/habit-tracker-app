import 'package:isar/isar.dart';

// run cmd: dart run build_runner build
part 'app_settings.g.dart';

@collection
class AppSettings {
  Id id = Isar.autoIncrement;
  DateTime? firstLaunchdDate;
}
