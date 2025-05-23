import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircularProgressIndicator Widget"),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.orangeAccent,
          backgroundColor: Colors.blueGrey,
          // value: .50,
          strokeWidth: 4,
        ),
      ),
    );
  }
}
