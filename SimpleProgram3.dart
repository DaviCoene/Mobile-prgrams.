import 'dart:html';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gerenciador de Tarefas"),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.lightBlue,
                  height: 130,
                ),
                Container(
                  color: Colors.white70,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        color: Colors.grey,
                      ),
                      Text("Aprender Flutter!"),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.keyboard_arrow_up),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
