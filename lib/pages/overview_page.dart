import 'package:flutter/material.dart';
import 'package:tone_audio_player/repositories/item_repository.dart';

import '../service_locator.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<StatefulWidget> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  // final String _status = 'no-action';

  @override
  Widget build(BuildContext context) {
    var repo = getIt<ItemRepository>();
    repo.index();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview'),
      ),
      body: Scaffold(
          // child: Center(child: Text('Overview ($_status)'))
      ),
    );
  }
}