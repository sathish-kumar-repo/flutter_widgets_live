import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  String title = 'First item';
  String item1 = 'First item';
  String item2 = 'Seconds item';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopupMenuButton Widget"),
      ),
      body: ListTile(
        title: Text(title),
        trailing: PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: item1,
              child: Text(item1),
            ),
            PopupMenuItem(
              value: item2,
              child: Text(item2),
            ),
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
          },
        ),
      ),
    );
  }
}
