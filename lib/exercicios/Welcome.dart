import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App de boas vindas",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDark = false;
  void switchTheme() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("App"),backgroundColor: Colors.cyan,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bem vindo!", style: TextStyle(fontSize: 24)),
              SizedBox(height: 100,),
              SwitchListTile(
                value: isDark,
                title: Text("Mudar de tema", style: TextStyle(fontSize: 16)),
                secondary:
                    isDark ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
                onChanged: (bool value) {
                  setState(() {
                    isDark = value;
                  });
                },
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Menu", style: TextStyle(fontSize: 18))),
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
              ListTile(
                title: Text(
                  "Sobre Nós",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),    
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(padding: EdgeInsets.all(16), child: Text("Proxima Página"),),
        ),
      ),
    );
  }
}
