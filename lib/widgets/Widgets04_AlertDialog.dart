import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Alert Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"),
                  )
                ],
                title: const Text("Flutter Tutorial"),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text("This is the Alert Dialog"),
              ),
            );
          },
        ),
      ),
    );
  }
}
