import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollbarWidget extends StatelessWidget {
  const CupertinoScrollbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoScrollbar Widget"),
      ),
      body: CupertinoScrollbar(
        thickness: 6.0,
        thicknessWhileDragging: 10.0,
        radius: const Radius.circular(34.0),
        radiusWhileDragging: Radius.zero,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(
                '$index',
                style: const TextStyle(fontSize: 30),
              ),
            );
          },
        ),
        // thumbVisibility: true,
      ),
    );
  }
}
