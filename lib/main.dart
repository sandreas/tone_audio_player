import 'package:flutter/material.dart';
import 'package:flutter_taggy/flutter_taggy.dart';

// import 'package:google_fonts/google_fonts.dart';

import 'app.dart';
import 'service_locator.dart';

void main() async {
  Taggy.initialize();
  await setupServiceLocator();
  runApp(const App());
}


// WidgetsFlutterBinding.ensureInitialized();
// GoogleFonts.config.allowRuntimeFetching = false;

/*
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [DataSourceConfigSchema],
    directory: path.join(dir.path, "preferences"),
  );

  final dscr = new DataSourceConfigRepository(secureStorage, isar);
*/

/*
  var containsEncryptionKey = await secureStorage.containsKey(key: 'encryptionKey');
  if (!containsEncryptionKey) {
    var key = Hive.generateSecureKey();
    await secureStorage.write(key: 'encryptionKey', value: base64UrlEncode(key));
  }

  var dbValue = await secureStorage.read(key: 'encryptionKey')??"";

  var encryptionKey = base64Url.decode(dbValue);

  var encryptedBox = await Hive.openBox('encryptedBox', encryptionCipher: HiveAesCipher(encryptionKey));

  if(!encryptedBox.containsKey("secret")) {
    encryptedBox.put('secret', 'Hive is awesome');
  }
  */

/*
void main() {
  runApp(const MyApp());
}
*/

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/