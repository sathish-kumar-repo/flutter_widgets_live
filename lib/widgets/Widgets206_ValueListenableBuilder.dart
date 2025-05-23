import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatelessWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ValueListenableBuilder Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                number.value += 1;
              },
              icon: const Icon(Icons.add),
            ),
            const SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: number,
              builder: (BuildContext context, int value, Widget? child) {
                return Text(
                  '$value',
                  style: const TextStyle(fontSize: 30),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

final ValueNotifier<int> number = ValueNotifier(0);
