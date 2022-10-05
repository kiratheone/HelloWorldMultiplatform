import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_mpp/day5/latihan.dart';
import 'package:hello_world_mpp/day5/row_column_widget_playground.dart';
import 'package:hello_world_mpp/day6/latihan.dart';
import 'package:hello_world_mpp/day7/day7latihan.dart';

import 'day12/page_1.dart';
import 'day6/latihan_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World Mpp',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: const Page1(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        title: _myTitle(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(
              builder: (context) {
                final width = MediaQuery.of(context).size.width;
                if (width < 800) {
                  return Text(
                    'Layout kecil -- 111111 You have pushed the button this many times: $_counter',
                  );
                }
                return const Text(
                  'layout panjang -- 111111 You have pushed the button this many times: ',
                );
              }
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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

  _myTitle(String judul) {
    return Text(judul);
  }
}


