import 'package:flutter/cupertino.dart';

class TelaCupertino extends StatefulWidget {
  const TelaCupertino({super.key});

  @override
  State<TelaCupertino> createState() => _TelaCupertinoState();
}

class _TelaCupertinoState extends State<TelaCupertino> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Barra superior"),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.line_horizontal_3),
          onPressed: () {},
        ),
      ),
      child: Stack(
        children: [
          Container(
            color: CupertinoColors.secondarySystemFill,
            padding: const EdgeInsets.only(top: 90),
            child: const Center(child: Text("Corpo do cupertino Scaffold")),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: CupertinoColors.systemGrey5,
              alignment: Alignment.center,
              child: const Text("Rodapé"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(padding: const EdgeInsets.all(16),
              child: CupertinoButton(
               padding: const EdgeInsets.symmetric(horizontal: 16),
               child: const Icon(CupertinoIcons.add),
               onPressed: (){}),
            ),
          ),
        ],
      ),
    );
  }
}
