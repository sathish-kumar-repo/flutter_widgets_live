import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  const PlaceHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PlaceHolder Widget"),
      ),
      body: const Column(
        children: [
          Placeholder(
            fallbackHeight:
                300, // not working in wrap with Row but work with column
            fallbackWidth:
                50, // not working in wrap with column but work with row
            color: Colors.orangeAccent,
            // child: Text('Not is used'),
          ),
        ],
      ),
    );
  }
}
