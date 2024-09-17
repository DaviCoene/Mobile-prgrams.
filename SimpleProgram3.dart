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
        body: ListView(
          children: [
           Task("Temos que estudar Flutter"),
            Task("Temos que aprender dart"),
            Task("Temos que fazer a Aps"),
            Task("Criar wireframe"),
            Task("Implementar App"),
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

class Task extends StatelessWidget {
  final String nome;

  const Task(this.nome,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
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
                  color: Colors.grey),
              Container(
                  width: 200 ,
                child: Text(
                  nome,
                  style: TextStyle(
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),

                ),
              ),



                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.keyboard_arrow_up),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
