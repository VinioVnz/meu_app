import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo do App",
      debugShowCheckedModeBanner: false,
      home: Tela(),
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Título da barra",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Text("Corpo do aplicativo"),
      backgroundColor: Colors.redAccent,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Produtos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Serviços",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                "Contatos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(padding: EdgeInsets.all(16), child: Text("Rodapé"),),
        
      ),
    );
  }
}
