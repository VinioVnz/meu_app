import 'package:flutter/material.dart';
import 'package:meu_app/widgetsLayout/Box.dart';


/**
 * WIDGET COLUMN
 * é um widget usado para dispor widgets filhos verticalmente, um embaixo do outro, dentro de um único eixo (o eixo vertical Y)
 * 
 * propriedades principais
 * children -> uma lista de widgets empilhados verticalmente
 * mainAxisAlignment -> alinha os filhos no eixo vertical
 * crossAxisalignment -> alinha os filhos no eixo cruzado (horizontal)
 * mainAxisSize -> controla se a column ocupa todo o espaço ou apenas o necessário
 * textBiseLine -> necessário para o alinhamento de texto com crosAxisalignment.baseline
 * 
 */

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        /* children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Container(
            width: 50,
            height: 50,
            color: Colors.deepOrangeAccent,
          )
        ], */
        children: [
          Box(text: "BOX 1", backgroundColor: Colors.yellow),
          Box(text: "BOX 2", backgroundColor: Colors.blue),
          Box(text: "BOX 3", backgroundColor: Colors.red),
        ],
      ),
    );
  }
}