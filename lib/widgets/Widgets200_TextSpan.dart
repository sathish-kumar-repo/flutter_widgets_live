import 'package:flutter/material.dart';

class TextSpanWidget extends StatefulWidget {
  const TextSpanWidget({super.key});

  @override
  State<TextSpanWidget> createState() => _TextSpanWidgetState();
}

class _TextSpanWidgetState extends State<TextSpanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextSpan Widget"),
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 25,
              color: Colors.blueGrey,
            ),
            text: 'Flutter',
            children: [
              TextSpan(
                text: ' to the moon',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
