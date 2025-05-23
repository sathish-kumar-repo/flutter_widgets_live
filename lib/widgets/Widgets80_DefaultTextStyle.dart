import 'package:flutter/material.dart';

class DefaultTextStyleWidget extends StatelessWidget {
  const DefaultTextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultTextStyle Widget"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Flutter Mapp'),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 36,
              color: Colors.blue,
            ),
            child: Center(
              child: Column(
                children: [
                  Text('Flutter Mapp'),
                  Text(
                    'Flutter Mapp',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Flutter Mapp',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
