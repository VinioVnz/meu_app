import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_app/Botao.dart';
import 'package:meu_app/Cupertino/MyCupertino.dart';
import 'package:meu_app/Debug.dart';
import 'package:meu_app/MaterialApp/MyMaterial.dart';
import 'package:meu_app/exercicios/Loja.dart';
import 'package:meu_app/exercicios/Welcome.dart';
import 'package:meu_app/inherited/UserInfos.dart';
import 'package:meu_app/navegacao/Routes.dart';
import 'package:meu_app/navegacao/Tela1.dart';
import 'package:meu_app/statefull/Contador.dart';
import 'package:meu_app/statefull/RandomNumber.dart';
import 'package:meu_app/statefull/darkmode.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';
import 'package:meu_app/usandoAssets/Fonts.dart';
import 'package:meu_app/usandoAssets/Imagem.dart';
import 'package:meu_app/widgetsLayout/LayoutApp.dart';

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
  //runApp(Loja());

/*   runApp(
    Loja());
} */

//runApp(Welcome());

//runApp(MyCupertino());
//como definir qual widget usar?

/* if(Platform.isAndroid){
  runApp(MyMaterial());
} else {
  runApp(MyCupertino());
}
} */
//runApp(LayoutApp());
//runApp(Fonts());
//runApp(Imagem());
//runApp(const MaterialApp(home: Debug(numeroMaximo: 10),));
//runApp(MaterialApp(home: Tela1(),));
runApp(Routes());
}

//atalho = st e ai so da autocomplete