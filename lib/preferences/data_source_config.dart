import 'package:isar/isar.dart';

part 'data_source_config.g.dart';

@collection
class DataSourceConfig {
  Id id = Isar.autoIncrement;
  Uri location = Uri();
}