import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionTile Widget"),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text('Expansion Tile'),
            trailing: Icon(
              _customIcon
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const [
              ListTile(
                title: Text('This is tile number 2'),
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customIcon = expanded);
            },
          ),
          ExpansionTile(
            title: const Text('Expansion Tile'),
            children: const [
              ListTile(
                title: Text('learn smart'),
              ),
            ],
            onExpansionChanged: (bool expanded) {},
          ),
          ExpansionTile(
            title: const Text('Expansion Tile'),
            onExpansionChanged: (bool expanded) {},
            controlAffinity: ListTileControlAffinity.leading,
            children: const [
              ListTile(
                title: Text('learn smart'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
