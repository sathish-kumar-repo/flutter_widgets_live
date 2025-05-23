import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'Flutter Mapp',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
