
import 'package:get_it/get_it.dart';
import 'package:tone_audio_player/repositories/item_repository.dart';

import 'constants.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  var location = Uri.directory("/home/andreas/projects/tone_audio_player/var/audiobooks", windows:kIsWindows);
  getIt.registerSingleton<ItemRepository>(ItemRepository(location));

  /*
  // services
  getIt.registerSingleton<AudioHandler>(await initAudioService());
  getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());

  // page state
  getIt.registerLazySingleton<PageManager>(() => PageManager());

   */
}