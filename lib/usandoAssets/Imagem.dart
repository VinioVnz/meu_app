import 'package:flutter/material.dart';
/* 
  FORMATOS DE IMAGENS ACEITOS PELO FLUTTER
  PNG, JPEG/JPG, GIF, WEBP, ICO, SVG, HEIF/HEIC
  SGV - NÃO É NATIVO (PRECISA DE BIBLIOTECA)
  HEIF/HEIC - NÃO É NATIVO (PRECISA DE BIBLIOTECA)
 */
class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(
          "Usando imagens",
        ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: 
                Image.asset('assets/images/batman.png')
              ,
            )
          ],
        ),
      ),
    );
  }
}
