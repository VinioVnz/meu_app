import 'package:flutter/material.dart';
import 'package:meu_app/navegacao/Tela1.dart';
import 'package:meu_app/navegacao/Tela2.dart';
import 'package:meu_app/navegacao/Tela3.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const Tela1(),
        '/tela2' : (context) => const Tela2(),
        '/tela3' : (context) => const Tela3()
      },
    );
  }
}