import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize Widget"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.black,
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(
              size: _size,
            ),
          ),
        ),
      ),
    );
  }
}
