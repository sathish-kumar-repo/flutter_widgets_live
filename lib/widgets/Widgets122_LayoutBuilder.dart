import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder Widget"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Center(
              child: Image.network('https://tinyurl.com/5n97bfvp'),
            );
          } else {
            return const Center(
              child: Text('Screen under 600'),
            );
          }
        },
      ),
    );
  }
}
