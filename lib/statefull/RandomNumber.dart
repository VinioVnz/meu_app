
import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumber extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomNumberWidget(),
    );
  }

}

class RandomNumberWidget extends StatefulWidget {
  _RandomNumberWidgetState createState() =>
  _RandomNumberWidgetState();

}

class _RandomNumberWidgetState extends State<RandomNumberWidget> {
  int randomNumber = 0;

  void generateRandom(){
    setState(() {
      randomNumber = Random().nextInt(1000);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gerador de número"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número: $randomNumber",
            style: TextStyle(fontSize: 32, color: Colors.blueAccent),
            ),
            SizedBox(height: 32,),
            ElevatedButton(onPressed: generateRandom, child: Text("Gerar número",
            style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.blueAccent)),
            )
          ],
        ),
      ),
    );
  }

}