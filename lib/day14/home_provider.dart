import 'package:flutter/material.dart';
import 'package:hello_world_mpp/day14/counter_notifier.dart';
import 'package:provider/provider.dart';
class MyHomeProvider extends StatefulWidget {
  const MyHomeProvider({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomeProvider> createState() => _MyHomeProviderState();
}

class _MyHomeProviderState extends State<MyHomeProvider> {


  void _incrementCounter() {
    context.read<CounterNotifier>().increment();
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
            Text(
              'You have pushed the button this many times: ${context.watch<CounterNotifier>()}',
            ),
            Text(
              context.watch<CounterNotifier>().count.toString(),
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