import 'package:flutter/material.dart';
import 'package:meu_app/Botao.dart';
import 'package:meu_app/exercicios/Loja.dart';
import 'package:meu_app/statefull/Contador.dart';
import 'package:meu_app/statefull/RandomNumber.dart';
import 'package:meu_app/statefull/darkmode.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';

/* void main() {
  runApp(Container(
    child: Text(
      "Hello world flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.purpleAccent, fontSize: 30.0),
      ),
  ));
}
 */

/* 
  No flutter temos 3 tipos de estados de aplicação
  Stateless (Estado imutável)
  A UI nunca muda após ser construída
  É usado para componentes estáticos como ícones , textos fixos e etc.

  Stateful (Estado local)
  A UI muda quando o estado interno muda
  É usado em widgets que tem interação com o usuário, como entradas de textos,
  carregamentos de dados, animações e etc.

  Inherited(Estado herdado)
  Compartilha dados descendentes na árvore de widgets
  útil para dados globais eves como temas, idiomas e etc
 */

void main(){
  //runApp(SemEstado());
  /* runApp(MaterialApp(
    home: Center(
      child: Botao(),
    ),
  )); */

  //runApp(User());

  //exemplo stateful
/*   runApp(
    MaterialApp(
      home: Contador(),
    )
    
  ); */

  //runApp(Darkmode());
  runApp(Loja());
}