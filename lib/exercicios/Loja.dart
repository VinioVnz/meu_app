import 'package:flutter/material.dart';

class Loja extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LojaState();
  }
  
}

class _LojaState extends State<Loja> {
  bool isOpen = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Situação da Loja",),
          centerTitle: true,

        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
               SwitchListTile(
            title: isOpen ? Text("Loja Aberta",style: TextStyle(color: const Color.fromARGB(255, 0, 165, 86)),) 
            : Text("Loja Fechada",style: TextStyle(color: const Color.fromARGB(255, 209, 0, 0)),),
            secondary: Icon(Icons.store),
            value: isOpen,
            onChanged: (bool value) {
              setState(() {
                isOpen = value;
                
              });
            },
            subtitle: Text("Alterne entre Aberto e Fechado"),
            ),
            Text(isOpen ? "A loja está Aberta" : "A loja está Fechada",style: TextStyle(fontSize: 26),)
            ],
          )
        ),
      ),
    );
  }

  
}