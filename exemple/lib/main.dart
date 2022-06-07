import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:humanize_duration/humanize_duration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String huminized = '';

  void _incrementCounter() {
    setState(() {
      huminized = humanizeDuration(
        const Duration(milliseconds: 97320000),
        language: const ArLanguage(),
        options: const HumanizeOptions(
          conjunction: ' و ',
          units: [Units.day, Units.hour],
          // delimiter: ' -- ',
          // lastPrefixComma: false,
          // spacer: ' Whole'
        ),
      );
    });
    log(huminized);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Duration: '),
            Text(
              huminized,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
