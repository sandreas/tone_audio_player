import 'package:flutter/material.dart';

class DataSourcePage extends StatefulWidget {
  const DataSourcePage({super.key});

  @override
  State<StatefulWidget> createState() => _DataSourcePageState();
}

class _DataSourcePageState extends State<DataSourcePage> {
  final String _status = 'no-action';

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('DataSource'),
    ),
    body: Center(child: Text('DataSource ($_status)')),
  );
}