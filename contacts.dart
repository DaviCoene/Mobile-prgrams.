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
          backgroundColor: Colors.blue,
          title: Text("Contacts"),
        ),
        body: ListView(
          children: [
            Task('Romain Hoog'),
            Task('Emilie Olsen'),
            Task('Téo Levfte'),
            Task('Nicole Cruz'),
            Task('Ranna Peixoro'),
            Task('José Ortiz'),
            Task('Romain Algan'),
            Task('Emilie Pharma'),
            Task('Téo Levfte'),
            Task('Nicole Cruz'),
            Task('Ranna Jackson'),
            Task('José Paulo'),
          ],
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;

  Task(this.nome,{super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white70,
                  height: 100,

                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                        Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)
                              ,
                              color: Colors.blue,
                            ),

  
                            ),
                          Text(
  widget.nome.isNotEmpty ? widget.nome.substring(0, 1) : "",
  style: TextStyle(
    fontSize: 30,
    overflow: TextOverflow.ellipsis,
    color: Colors.white
  ), 
                            
)

                            
                          
                          ]),
                        Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.nome,
                                  style: TextStyle(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
  ((widget.nome.replaceAll(' ', '.')).toLowerCase()) + '@example.com',
  style: TextStyle(
    fontSize: 10,
    overflow: TextOverflow.ellipsis,
  ),
),

                              ],
                            )),


                        Container(
                          width: 90,
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
     
    );
  }
}