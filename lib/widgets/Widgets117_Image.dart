import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),
      body: const Image(
        image: NetworkImage('https://tinyurl.com/yc4pctt5'),
        color: Colors.blue,
        colorBlendMode: BlendMode.colorBurn,
      ),
    );
  }
}
