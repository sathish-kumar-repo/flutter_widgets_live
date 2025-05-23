import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  const FadeTransitionWidget({super.key});

  @override
  State<FadeTransitionWidget> createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  //Cubic(0.42, 0.00, 1.00, 1.00)
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    print(_animation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FadeTransition Widget"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(size: 300),
        ),
      ),
    );
  }
}
