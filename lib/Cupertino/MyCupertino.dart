import 'package:flutter/cupertino.dart';
import 'package:meu_app/Cupertino/TelaCupertino.dart';

class MyCupertino extends StatelessWidget {
  const MyCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Aplicativo com cupertino",
      debugShowCheckedModeBanner: false,
      home: TelaCupertino(),
    );
  }
}