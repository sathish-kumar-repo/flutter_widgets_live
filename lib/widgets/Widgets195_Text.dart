import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'This is a text which is pretty long',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
              letterSpacing: 2,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
