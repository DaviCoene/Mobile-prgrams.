import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.blue, width: 50, height: 50),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.blue, width: 100, height: 100),
              Container(color: Colors.red, width: 50, height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.cyan, width: 50, height: 50),
              Container(color: Colors.pink, width: 50, height: 50),
              Container(color: Colors.purple, width: 50, height: 50),
            ],
          ),
          Container(
            color: Colors.yellow,
            width: 300,
            height: 30,
            child: Text("Diamante Amarelo",
                style: TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center),
          ),
          ElevatedButton(
              onPressed: () {
                print('Botão clicado!');
              },
              child: Text('Click on the Button'))
        ],
      ),
    );
  }
}
