import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:tone_audio_player/constants.dart';
import 'package:path/path.dart' as p;
import '../models/item.dart';

class ItemRepository {
  Uri location = Uri();

  ItemRepository(this.location);

  Future<List<Item>>index() async {
    var path = location.toFilePath(windows:kIsWindows);
    var dir = Directory(path);
    dir.list(recursive: true).forEach((element) async {
      var ext = p.extension(element.path);


      if(ext == ".m4b") {
        debugPrint(element.path);
      }


      /*
      if (kDebugMode) {
        print(ext);
      }

       */
    });
    return Future.value([]);
  }
}