import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Padding Widget"),
      ),
      body: const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            // padding: EdgeInsets.zero,
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
            child: Text('Flutter Mapp'),
          ),
        ),
      ),
    );
  }
}
