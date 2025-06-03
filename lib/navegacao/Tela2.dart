import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 2")),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Ir para a tela 3"),
                onPressed: () {
                  Navigator.pushNamed(context, '/tela3');
                },
              ),
              ElevatedButton(child: Text("Voltar para tela 1"),
              onPressed: () => Navigator.pushNamed(context, '/'),)
            ],
          )
        ),
      ),
    );
  }
}
