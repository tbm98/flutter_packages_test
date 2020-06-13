import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jsonserializationtest/address.dart';
import 'package:jsonserializationtest/infor.dart';
import 'package:jsonserializationtest/main2.dart';
import 'package:jsonserializationtest/user.dart';

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
      home: MyHomePage(title: 'title',),
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
  void _incrementCounter() {
    User user1 = User('name', 'email',Address('location','line'),Infor(quequan: 'que quan'));
    print(user1.toJson());

    User user2 = User.fromJson(
        jsonDecode('{"name":"tran binh minh","email":"tbm98.dev@gmail.com","address":{"location":"location","line":"z115"},"Information":{"que_quan":" hihi "}}'));
    print(user2.toJson());
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
