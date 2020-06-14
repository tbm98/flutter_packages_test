import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'my_state.dart';
import 'my_state_notifier.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<Logger>(create: (_) => ConsoleLogger()),
        StateNotifierProvider<MyStateNotifier, MyState>(
          create: (_) => MyStateNotifier(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  Widget _titleContent() {
    print('rebuild title content');
    return const Text(
      'You have pushed the button this many times:',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _titleContent(),
            Selector<MyState, int>(
              selector: (_, myState) => myState.a,
              builder: (_, value, __) {
                return Text(value.toString());
              },
            ),
            Divider(),
            Selector<MyState, int>(
              selector: (_, myState) => myState.b,
              builder: (_, value, __) {
                return Text(value.toString());
              },
            ),
            Divider(),
            Selector<MyState, int>(
              selector: (_, myState) => myState.c,
              builder: (_, value, __) {
                return Text(value.toString());
              },
            ),
            Divider(),
            Selector<MyState, int>(
              selector: (_, myState) => myState.d,
              builder: (_, value, __) {
                return Text(value.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<MyStateNotifier>().increA();
            },
            child: Text('A'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<MyStateNotifier>().increB();
            },
            child: Text('B'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<MyStateNotifier>().increC();
            },
            child: Text('C'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<MyStateNotifier>().increD();
            },
            child: Text('D'),
          ),
        ],
      ),
    );
  }
}
