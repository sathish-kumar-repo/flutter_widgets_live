import 'package:flutter/material.dart';

class AspectRadioWidget extends StatelessWidget {
  const AspectRadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRadio Widget"),
      ),
      body: Container(
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        width: double.infinity,
        height: 300,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
