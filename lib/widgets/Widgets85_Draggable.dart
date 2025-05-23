import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Widget"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              data: Colors.orangeAccent,
              onDraggableCanceled: (velocity, offset) {},
              feedback: Container(
                width: 150.0,
                height: 150.0,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    'Box...',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orangeAccent,
                child: const Center(
                  child: Text('Box'),
                ),
              ),
            ),
            DragTarget(
              onAcceptWithDetails: (details) {},
              // ignore: deprecated_member_use
              onAccept: (Color color) {
                // caughtColor = Colors.lightGreen;
                caughtColor = color;
              },
              builder: (BuildContext context, List<dynamic> accepted,
                  List<dynamic> rejected) {
                // print(accepted);
                // print(rejected);
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                  child: const Center(
                    child: Text('Drag here'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
