import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int counter1 = 0;
  int counter2 = 0;

  Future<void> waitShort() async {
    await Future.delayed(Duration(seconds: 2));
  }

  void method1() async {
    await waitShort();
    counter1++;
    print('Method 1');
  }

  void method2() async {
    await waitShort();
    counter2++;
    print('Method 2');
  }

  void buttonPressed() {
    method1();
    method2();
    print('Finished');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Async Methods Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: buttonPressed,
                child: Text('Call Methods'),
              ),
              Text('Counter 1: $counter1'),
              Text('Counter 2: $counter2'),
            ],
          ),
        ),
      ),
    );
  }
}
