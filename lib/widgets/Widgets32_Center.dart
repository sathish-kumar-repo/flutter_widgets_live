import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.pinkAccent,
            child: const Center(
              // it only possible is in column widget and if the container have any height then heightfactor is not working
              heightFactor: 5, // to multiply the current widget height by 5
              widthFactor: 2, // similar to heightfactor
              child: Text('Center Widget'),
            ),
          )
        ],
      ),
    );
  }
}
