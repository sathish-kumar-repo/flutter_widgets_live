import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({super.key});

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Widget"),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              child: const Text('Flutter Mapp'),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              child: const Text('Flutter Mapp'),
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.orangeAccent,
              alignment: Alignment.center,
              child: const Text('Flutter Mapp'),
            ),
          ),
        ],
      ),
    );
  }
}
