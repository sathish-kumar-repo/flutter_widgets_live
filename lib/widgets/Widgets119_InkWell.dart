import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({super.key});

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InkWell Widget"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              color = Colors.red;
            });
          },
          //onDoubleTap: () {},
          //onLongPress: () {},
          child: Ink(
            height: 300,
            width: 300,
            color: color,
            child: const Center(
              child: Text('Click'),
            ),
          ),
        ),
      ),
    );
  }
}
