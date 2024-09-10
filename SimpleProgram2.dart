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
      home: Container(
        color: Colors.black,
        child: Column(


          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(color: Colors.red, width: 150, height: 150,),
                Container(color: Colors.orange, width: 150, height: 150,),
                Container(color: Colors.yellow, width: 150, height: 150,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.green, width: 150, height: 150,),
                Container(color: Colors.lightBlue, width: 150, height: 150,),
                Container(color: Colors.blue, width: 150, height: 150,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.purple, width: 150, height: 150,),
                Container(color: Colors.pink, width: 150, height: 150,),
                Container(color: Colors.white, width: 150, height: 150,)
              ],
            ),

          ]
        ),
      ),
    );
  }
}
