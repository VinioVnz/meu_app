import 'package:flutter/material.dart';

class Darkmode extends StatefulWidget {
  State<StatefulWidget> createState() => _AppState();

}

class _AppState extends State<Darkmode>{
  bool isDarkMode = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Tipo de tema"),),
        body: Center(
          child: SwitchListTile(
            title: Text("Dark Mode"),
            secondary: isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
            value: isDarkMode,
            onChanged: (bool value){
              setState(() {
                isDarkMode = value;
              });
            },
          ),
        ),
      ),
    );
  }
  
    
}