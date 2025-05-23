import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AboutListTile Widget"),
      ),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: 'version 1.0.0',
          aboutBoxChildren: [
            Text("This is a text created by Flutter Map"),
          ],
        ),
      ),
    );
  }
}
