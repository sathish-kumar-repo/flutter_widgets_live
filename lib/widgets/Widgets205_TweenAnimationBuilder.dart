import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double targetValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TweenAnimationBuilder Widget"),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(milliseconds: 500),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              iconSize: size,
              color: Colors.orangeAccent,
              icon: const Icon(Icons.flutter_dash),
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 100 ? 250 : 100;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
