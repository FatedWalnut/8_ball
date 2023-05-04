import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("Me pergunte qualquer coisa(so respondo em ingles)",
        style: TextStyle(
          fontFamily: 'Courier',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold)
        ),

        backgroundColor: Colors.blue[900],
      ),
      body: MyApp(),
    ),
  ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  int ball_number = 1;

  @override
  Widget build(BuildContext context) {
    return Center( child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Expanded(child:
      TextButton(
        onPressed: () {
          setState(() {
            ball_number = Random().nextInt(5) +1;
          });
        },child:
      Image.asset('images/ball$ball_number.png'),),),
    ],
    ),
    );
  }
}

