import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int counter = 0;

  void onClicked() {
    setState(() {
      counter++;
    });
  }

  void subClicked() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 20),
              ),
              TextButton(onPressed: subClicked, child: const Text('Subtract')),
              IconButton(
                  onPressed: onClicked, icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}
