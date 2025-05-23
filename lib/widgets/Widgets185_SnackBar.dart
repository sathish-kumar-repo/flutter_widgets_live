import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Flutter Mapp'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              ),
            );
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
