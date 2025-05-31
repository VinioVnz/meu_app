import 'package:flutter/material.dart';
/**
 * o row é um widget que organiza os filhos horizontalmente, um ao lado do outro, dentro de um único eixo horizontal X da esquerda para a direita
 * 
 * propriedades
 * children -> lista de widgets filhos alinhados horizontalmente
 * mainAxisAlignment -> alinha os filhos no eixo principal (horizontal)
 * crossAxisAlignment -> alinha os filhos no eixo cruzado (vertical)
 * mainAxisSize = define se o row ocupa todo o espaço horizontal ou só o necessário
 * textDirection -> define a direção do conteúdo: LTR (esquerda p/ direita) ou RTL (direita p/ esquerda)
 */
class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("TEXTO 1"),
          Text("TEXTO 2"),
          Text("TEXTO 3"),
          Text("TEXTO 4"),
        ],
      ),
    );
  }
}