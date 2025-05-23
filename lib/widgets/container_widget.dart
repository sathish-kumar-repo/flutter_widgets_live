// widgets/live_widgets/container_demo.dart
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 100,
        width: 100,
        child: const Center(child: Text("Container")),
      ),
    );
  }
}
