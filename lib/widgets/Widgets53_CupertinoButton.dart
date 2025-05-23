import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoButton Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CupertinoButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(height: 30),
            const CupertinoButton.filled(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(height: 30),
            CupertinoButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
