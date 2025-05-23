import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SimpleDialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: const Text('Flutter Mapp'),
                contentPadding: const EdgeInsets.all(20.0),
                children: [
                  const Text('More Information'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  )
                ],
              ),
            );
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
