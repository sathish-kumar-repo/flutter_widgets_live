import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {
  const DecoratedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecorateBox Widget"),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                Colors.deepOrange,
                Colors.purple,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
