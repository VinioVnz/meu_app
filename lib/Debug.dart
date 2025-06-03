import 'package:flutter/material.dart';

class Debug extends StatelessWidget {
  final int numeroMaximo;
  const Debug({super.key, required this.numeroMaximo});

  List<Widget> gerarNumeros(){
    List<Widget> items = [];
    for(int i = 1; i <= numeroMaximo; i++){
      items.add(
        Padding(padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text("Número $i", style: const TextStyle(fontSize: 24),),
        )
      );
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Debugando código"),),
    body: ListView(
      padding: const EdgeInsets.all(10),
      children: gerarNumeros(),
      
    ),
    );
  }
}
