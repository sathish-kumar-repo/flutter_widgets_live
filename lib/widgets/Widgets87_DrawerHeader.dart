import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatefulWidget {
  const DrawerHeaderWidget({super.key});

  @override
  State<DrawerHeaderWidget> createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hj"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {},
            )
          ],
        ),
      ),
      //body:
    );
  }
}
