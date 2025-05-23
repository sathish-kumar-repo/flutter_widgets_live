import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FadeInImage Widget"),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/icon/ocean.jpg',
          image: 'https://tinyurl.com/p4475pwh',
        ),
      ),
    );
  }
}
