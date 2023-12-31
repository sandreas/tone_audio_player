import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final String _status = 'no-action';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Container(
          child: Center(child: Text('Login for App ($_status)'))
        ),
      );
  /*
  MaterialButton(
  child: Text("Update"),
  onPressed: getIt<AppModel>().update   // given that your AppModel has a method update
  )

   */
}
