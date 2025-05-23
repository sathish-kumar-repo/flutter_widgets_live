import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollView Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            50,
            (index) => ListTile(
              title: Text('Item ${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
