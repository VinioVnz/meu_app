import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:meu_app/inherited/UserData.dart';

class UserInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserData(
      username: "veNeZe",
      child: Scaffold(
        appBar: AppBar(title: Text("Perfil de usuário"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WellcomeMessage(),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

}

class WellcomeMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final username = UserData.of(context).username;

    return Text("Bem vindo $username", style: TextStyle(fontSize: 24),);
  }

}