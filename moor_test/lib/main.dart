import 'package:flutter/material.dart';
import 'package:moor/moor.dart' hide Column;
import 'package:moor_test/database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  MyDatabase database;

  @override
  void initState() {
    super.initState();
    database = MyDatabase();
  }

  void _incrementCounter() async {
    final listTodo = await database.allTodoEntries();
    print(listTodo);
    setState(() {
      _counter++;
    });
  }

  void _addTodo() async {
    database
        .addTodo(TodosCompanion.insert(
            title: 'title ${DateTime.now().minute}',
            content: 'content ${DateTime.now().millisecond}',
            category: Value(1)))
        .then((value) => print('after add todo is $value'));
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.print),
          ),
          FloatingActionButton(
            onPressed: _addTodo,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
