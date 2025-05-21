import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorState();

}

class _ContadorState extends State<Contador> {
  int contador = 0;

  void incrementar(){
    setState(() {
      contador++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contador"),),
      body: Center(
        child: Text("Contador: $contador"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: Icon(Icons.add),
      ),
    );
  }
}