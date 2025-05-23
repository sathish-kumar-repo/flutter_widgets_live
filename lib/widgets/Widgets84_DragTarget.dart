import 'package:flutter/material.dart';

class DragTargetWidget extends StatefulWidget {
  const DragTargetWidget({super.key});

  @override
  State<DragTargetWidget> createState() => _DragTargetWidgetState();
}

class _DragTargetWidgetState extends State<DragTargetWidget> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DragTarget Widget"),
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
            DragTarget<Color>(
              // ! Deprecated
              // onAccept: (Color color) {
              //   caughtColor = color;
              // },
              // ! Use this
              onAcceptWithDetails: (details) {
                caughtColor = details.data;
              },
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
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

///onAccept: (data) {
//
//             }
