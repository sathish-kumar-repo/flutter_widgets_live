import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Widget"),
      ),
      body: Column(
        children: [
          // Flexible(
          //   flex: 5,
          //   child: Container(
          //     // height: 50,
          //     color: Colors.blue,
          //   ),
          // ),
          // Flexible(
          //   flex: 4,
          //   child: Container(
          //     // height: 100,
          //     color: Colors.orange,
          //   ),
          // ),
          // Flexible(
          //   flex: 3,
          //   child: Container(
          //     // height: 200,
          //     color: Colors.red,
          //   ),
          // ),
          // flexible(height give than work otherwise its flexible) to expanded(even-though height inside the widget , the widget occupy complete space
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              height: 50,
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

//expandedAndFlexible.png
