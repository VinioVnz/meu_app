import 'package:flutter/material.dart';
import 'package:meu_app/widgetsLayout/WidgetColumn.dart';
import 'package:meu_app/widgetsLayout/WidgetContainer.dart';
import 'package:meu_app/widgetsLayout/WidgetRow.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widgets de layout",
      home: MontandoTela(),
    );
  }
}

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<MontandoTela> createState() => _MontandoTelaState();
}

class _MontandoTelaState extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de layout"),),
      //body: Widgetcontainer(),
      //body: WidgetColumn(),
      body: WidgetRow(),
    );
  }
}