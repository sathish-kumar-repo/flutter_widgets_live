import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.redAccent.withOpacity(0.5),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _colorAnimation = colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AnimatedModalBarrier Widget"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.0,
                  width: 250.0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPressed = true;
                          });
                          _animationController.reset();
                          _animationController.forward();
                          Future.delayed(
                            const Duration(seconds: 3),
                            () {
                              setState(() {
                                _isPressed = false;
                              });
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                        ),
                        child: const Text('Press'),
                      ),
                      if (_isPressed) _animatedModalBarrier,
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
