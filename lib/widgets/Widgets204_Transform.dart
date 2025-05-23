import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform Widget"),
      ),
      body: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(pi * 1 / 2),
          child: Image.asset('assets/icon/ocean.jpg'),
        ),
      ),
    );
  }
}
