import 'package:flutter/material.dart';

import 'pages/overview_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var homePage = const OverviewPage();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tone Audio Player',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homePage,
    );
  }
}