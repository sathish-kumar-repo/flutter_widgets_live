import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CloseButton Widget"),
      ),
      body: Center(
        child: CloseButton(
          color: Colors.red,
          onPressed: () {
            debugPrint('Do Something');
          },
        ),
      ),
    );
  }
}
