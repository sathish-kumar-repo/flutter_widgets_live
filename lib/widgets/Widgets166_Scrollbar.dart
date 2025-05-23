import 'package:flutter/material.dart';

class ScrollbarWidget extends StatefulWidget {
  const ScrollbarWidget({super.key});

  @override
  State<ScrollbarWidget> createState() => _ScrollbarWidgetState();
}

class _ScrollbarWidgetState extends State<ScrollbarWidget> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollbar Widget"),
      ),
      body: Scrollbar(
        thickness: 10,
        radius: const Radius.circular(20),
        controller: controller,
        child: ListView.builder(
          controller: controller,
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}
