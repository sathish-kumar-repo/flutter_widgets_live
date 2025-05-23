import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _offset = const Offset(100, 150);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LongPressDraggable Widget"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child: LongPressDraggable(
                    feedback: Image.network(
                      'https://tinyurl.com/95ncjeuu',
                      height: 200,
                      color: Colors.orangeAccent,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.network(
                      'https://tinyurl.com/95ncjeuu',
                      height: 200,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height -
                            constraints.maxHeight;

                        _offset = Offset(
                            details.offset.dx, details.offset.dy - adjustment);
                      });
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
