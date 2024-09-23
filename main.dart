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
          title: Text("Gerenciador de Tarefas"),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter', 5, 'https://th.bing.com/th/id/OIP.mK2_uFmF9iK2ZsBgW6qGQQHaKJ?w=1280&h=1754&rs=1&pid=ImgDetMain'),
            Task('Estudar Dart', 9,'https://th.bing.com/th/id/OIP.2_on2lhgjJUnuP3sBTUVTAAAAA?rs=1&pid=ImgDetMain'),
            Task('Fazer APS', 10,'https://th.bing.com/th/id/OIP.mK2_uFmF9iK2ZsBgW6qGQQHaKJ?w=1280&h=1754&rs=1&pid=ImgDetMain'),
            Task('Criar Wireframe', 6, 'https://th.bing.com/th/id/OIP.mK2_uFmF9iK2ZsBgW6qGQQHaKJ?w=1280&h=1754&rs=1&pid=ImgDetMain'),
            Task('Implementar App', 2, 'https://static.vecteezy.com/system/resources/previews/016/460/767/original/linux-os-logo-top-operating-system-signs-free-png.png'),
            Task('TESTE', 1, 'https://th.bing.com/th/id/OIP.KllxkkAMqheS0xSIfXVdmgAAAA?rs=1&pid=ImgDetMain'),
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
  final int nivel;
  final String foto;

  const Task(this.nome,this.nivel ,this.foto,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.lightBlue,
              height: 130,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white70,
                  height: 100,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 100,
                          color: Colors.grey,
                          child: Image(image: NetworkImage(foto))
                        ),
                        Container(
                            width: 200,
                            child: Text(
                              nome,
                              style: TextStyle(
                                  fontSize: 20,
                                  overflow: TextOverflow.ellipsis),
                            )),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel /10
                        ),
                        width: 200,

                      ),
                    ),
                    Text(
                      'Nível: $nivel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
