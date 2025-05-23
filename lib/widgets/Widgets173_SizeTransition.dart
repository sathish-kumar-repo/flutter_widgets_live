import 'package:flutter/material.dart';

class SizeTransitionWidget extends StatefulWidget {
  const SizeTransitionWidget({super.key});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInSine,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizeTransition Widget"),
      ),
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        // axis: Axis.vertical,
        axisAlignment: -1,
        child: const Center(
          child: FlutterLogo(size: 300),
        ),
      ),
    );
  }
}
/*
* double axisAlignment. Describes how to align the child along the axis that sizeFactor is modifying. A value of -1.0 indicates the top when axis is Axis. vertical, and the start when axis is Axis.
* */
