import 'dart:math';

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
      home: const MyHomePage(title: 'DICEE GAME',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  //int counter = 1;
}

class _MyHomePageState extends State<MyHomePage> {
  int dice1 = 1;
  int dice2 = 1;

  void _tossdice() {
    setState(() {
      dice1 = Random().nextInt(6)+1;
      dice2 = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body:  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             SizedBox(
              
              height: 200,
              width: 150,
              child:Image.asset('images/dice$dice1.png'),
            ),
             SizedBox(
              
              height: 200,
              width: 150,
              child:Image.asset('images/dice$dice2.png'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tossdice,
        tooltip: 'Increment',
        child: const Icon(Icons.play_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
