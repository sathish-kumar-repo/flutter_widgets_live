import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AboutDialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show About Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'Legalese',
                applicationName: "Flutter App",
                applicationVersion: 'version 1.0.0',
                children: [
                  Text("This is a text created by Flutter Mapp"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
