import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_taggy/flutter_taggy.dart';
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
        final TaggyFile taggyFile = await Taggy.readAll(element.path);

        // debugPrint(taggyFile.primaryTag);
        var i = MediaItem(
            id: element.path,
            album: taggyFile.primaryTag?.album,
            title: taggyFile.primaryTag?.trackTitle ?? p.basenameWithoutExtension(element.path));

        debugPrint(i.id);
        debugPrint(i.album);
        debugPrint(i.title);
        //final metadata = await MetadataRetriever.fromFile(File(element.path));
        // debugPrint(metadata.albumName);

        /*
        Tag? tag = await AudioTags.read(path);

        String? title = tag?.title;
        String? trackArtist = tag?.trackArtist;
        String? album = tag?.album;
        String? albumArtist = tag?.albumArtist;
        String? genre = tag?.genre;
        int? year = tag?.year;
        int? trackNumber = tag?.trackNumber;
        int? trackTotal = tag?.trackTotal;
        int? discNumber = tag?.discNumber;
        int? discTotal = tag?.discTotal;
        int? duration = tag?.duration;
        List<Picture>? pictures = tag?.pictures;
        debugPrint(album);

         */
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