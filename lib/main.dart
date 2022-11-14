import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino Sliding Segmented Control',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Sliding Segmented Control'),
      ),
      body: Center(
        child: CupertinoSlidingSegmentedControl(
          groupValue: _sliding,
          onValueChanged: (value) {
            setState(() {
              _sliding = value!;
            });
          },
          children: const {
            0: Text('Option 1'),
            1: Text('Option 2'),
            2: Text('Option 3'),
            3: Text('Option 4'),
          },
        ),
      ),
    );
  }
}
