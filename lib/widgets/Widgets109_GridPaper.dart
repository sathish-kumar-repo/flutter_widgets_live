import 'package:flutter/material.dart';

class GridPaperWidget extends StatelessWidget {
  const GridPaperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridPaper Widget"),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.pink,
          divisions: 1,
          interval: 210,
          subdivisions: 6,
        ),
      ),
    );
  }
}
