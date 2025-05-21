import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple)
          ),
          onPressed: () {}, 
          child: 
          Center(
            child: Text(
              "Clique",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20.0),
            ),
          )
          ),
          
      )
    );
  }
  
  
}