import 'package:flutter/material.dart';

class UserData extends InheritedWidget{
  final String username;
  
  const UserData({
    required this.username,
    required Widget child //widget filho que herda o nome
  }) : super(child: child); //passa o filho para o construtor pai
  
   /* 
    este método estatico pode ser chamado independete de termos instaciado o 
    objeto ou não
    definimos um método estático chamado of
    isso significa que voce pode chamar UserData.of(context) sem precisar de uma
    instancia de UserData.
    quem chamar vai receber um BuildContext, ou seja o contexto onde o widget está
    na árvore
    */
  static UserData of(BuildContext context){
    final result = context.dependOnInheritedWidgetOfExactType<UserData>();
    return result!;
  }
  
  @override
  bool updateShouldNotify(UserData
   oldWidget) {
    return oldWidget.username != username;
  }
}