import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureDetector Widget"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
