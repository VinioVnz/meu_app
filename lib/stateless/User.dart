import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text("Cartão de usuário"),),
        body: const Center(
          child: UserCard(
            nome: "Vinícius",
            email: "viniverdao@gmail.com",
            avatarUrl: "https://i.ytimg.com/vi/wINzzPm4hj0/mqdefault.jpg",
            ),
        ),
      ),
    );
  }

}

class UserCard extends StatelessWidget{
  
  final String nome;
  final String email;
  final String avatarUrl;

  const UserCard(
    {
    super.key,
    required this.nome,
    required this.email,
    required this.avatarUrl
    }
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
              radius: 30,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(nome, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(email, style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),
              ],
            )
          ],),
          ),
      ),
    );
  }
  
}