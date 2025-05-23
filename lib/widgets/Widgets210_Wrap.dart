import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Wrap(
            spacing: 10.0,
            runSpacing: 50.0,
            children: List.generate(
              10,
              (index) => const Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  child: Icon(Icons.person),
                ),
                label: Text('Mapp'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
