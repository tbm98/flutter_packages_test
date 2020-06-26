// lib/main.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final counterProvider = StateProvider((_) => 0);
final counterProvider2 = StateProvider((_) => 100);

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// Note: MyApp is a HookWidget, from flutter_hooks.
class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [MyText()],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.state++;
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyText extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // To read our provider, we can use the hook "useProvider".
    // This is only possible because MyApp is a HookWidget.
    final counter = useProvider(counterProvider);
    final counter2 = useProvider(counterProvider2);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text('${counter.state}'), Text2('${counter2.state}')],
    );
  }
}

class Text2 extends StatelessWidget {
  Text2(this.value);
  final String value;
  @override
  Widget build(BuildContext context) {
    print('rebuild text2');
    return Text(value);
  }
}
