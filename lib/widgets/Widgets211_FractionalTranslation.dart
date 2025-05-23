import 'package:flutter/material.dart';

class FractionalTranslationWidget extends StatelessWidget {
  const FractionalTranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FractionalTranslation Widget"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            width: 100,
            height: 100,
          ),
          FractionalTranslation(
            translation: const Offset(1, -1),
            child: Container(
              color: Colors.orangeAccent,
              width: 100,
              height: 100,
            ),
          ),
          FractionalTranslation(
            translation: const Offset(1, -1),
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
