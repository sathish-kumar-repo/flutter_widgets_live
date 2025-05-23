import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  const PositionedTransitionWidget({super.key});

  @override
  State<PositionedTransitionWidget> createState() =>
      _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text("PositionedTransition Widget"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final Size biggest = constraints.biggest;
          final Size smallest = constraints.smallest;
          print(biggest);
          print(smallest);
          print(
            biggest.width / 2 - smallLogo / 2,
          );
          return Stack(
            children: [
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                    // Rect.fromLTWH(left, top, width, height)
                    Rect.fromLTWH(
                      biggest.width / 2 - smallLogo / 2,
                      0,
                      smallLogo,
                      smallLogo,
                    ),
                    biggest,
                  ),
                  end: RelativeRect.fromSize(
                    // rect,
                    // container,
                    Rect.fromLTWH(
                      // left,
                      // top,
                      // width,
                      // height,
                      biggest.width / 2 - bigLogo / 2,
                      biggest.height - bigLogo,
                      bigLogo,
                      bigLogo,
                    ),
                    biggest,
                  ),
                ).animate(
                  CurvedAnimation(
                    parent: _controller,
                    curve: Curves.slowMiddle,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
