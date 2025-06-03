import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 3"),),
      body: Center(
        child: ElevatedButton(child: Text("Voltar para tela 2"),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
    );
  }
}