import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          constraints: const BoxConstraints.expand(height: 200),
          transform: Matrix4.rotationZ(0.2),
          transformAlignment: Alignment.center,
          child: const Text(
            'Flutter Mapp',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
