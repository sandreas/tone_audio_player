

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:tone_audio_player/preferences/data_source_config.dart';

/*
    await isar.writeTxn(() async {
      final recipe = await isar.recipes.get(123)

      recipe.isFavorite = false;
      await isar.recipes.put(recipe); // perform update operations

      await isar.recipes.delete(123); // or delete operations
    });
 */

class DataSourceConfigRepository {
  FlutterSecureStorage secureStorage;
  Isar db;

  DataSourceConfigRepository(this.secureStorage, this.db );

  Future<List<DataSourceConfig>>index() async {
      return await db.dataSourceConfigs.where().findAll();
  }

  create(DataSourceConfig config) async {
    await db.writeTxn(() async {
         await db.dataSourceConfigs.put(config);
    });
  }

  read(var id) async {
      return await db.dataSourceConfigs.get(id);
  }

  update(var id, DataSourceConfig config) async {
    await db.writeTxn(() async {
      await db.dataSourceConfigs.put(config);
    });
  }

  delete(var id) async {
    await db.writeTxn(() async {
      await db.dataSourceConfigs.delete(id);
    });
  }
}