import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);
final counterProvider2 = StateProvider((ref) => 0);
final counterComputed = Computed((read) {
  final value = read(counterProvider).state / 10;
  return value.toInt();
});

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer((context, read) {
              print('rebuild counterProvider');
              final count = read(counterProvider).state;
              return Text('$count');
            }),
            Consumer((context, read) {
              print('rebuild counterProvider2');
              final count = read(counterProvider2).state;
              return Text('$count');
            }),
            Consumer((context, read) {
              print('rebuild counterComputed');
              final count = read(counterComputed);
              return Text('$count');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void show(BuildContext context) {
    showDialog(
        context: context,
        builder: (ct) {
          return AlertDialog(
            title: Text('title'),
            content: Consumer((_, read) {
              return Text('${read(counterProvider).state}');
            }),
          );
        });
  }
}
