import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned Widget"),
      ),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 200.0 : 50.0,
              height: selected ? 50.0 : 200.0,
              top: selected ? 50.0 : 150.0,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
