import 'package:flutter/material.dart';
import 'package:sqlite/database.dart';
import 'package:sqlite/dog.dart';

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
  MyDataBase dataBase = MyDataBase();

  void _incrementCounter() async {
    final listDogs = await dataBase.dogs();
    listDogs.forEach((element) {
      print(element.toMap());
    });
  }

  void _add() async {
    dataBase.insertDog(Dog(id: 2, name: 'name', age: 10));
  }

  void _delete() async {
    dataBase.deleteDog(1);
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
            onPressed: _add,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _delete,
            tooltip: 'Increment',
            child: Icon(Icons.exposure_neg_1),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}