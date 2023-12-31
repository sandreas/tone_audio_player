# tone_audio_player

A cross platform audio player

## Reference projects

- https://github.com/suragch/flutter_audio_service_demo


## Code-snippets

```dart
final fileDirectory = Uri.directory('data/images', windows: false);
print(fileDirectory); // data/images/

final fileDirectoryWindows =
   Uri.directory(r'C:\data\images', windows: true);
print(fileDirectoryWindows); // file:///C:/data/images/
```

## Troubleshooting
Problem:
```
CMake Error at /usr/share/cmake/Modules/FindPkgConfig.cmake:607 (message):
  A required package was not found
Call Stack (most recent call first):
  /usr/share/cmake/Modules/FindPkgConfig.cmake:829 (_pkg_check_modules_internal)
  flutter/ephemeral/.plugin_symlinks/flutter_secure_storage_linux/linux/CMakeLists.txt:13 (pkg_check_modules)


Exception: Unable to generate build files
```
Solution:
```bash
sudo dnf install libsecret-devel jsoncpp-devel
sudo apt-get install libsecret-1-dev libjsoncpp-dev libsecret-1-0
```


## Setup

```
flutter pub add isar isar_flutter_libs
flutter pub add -d isar_generator build_runner


flutter pub run build_runner build
```