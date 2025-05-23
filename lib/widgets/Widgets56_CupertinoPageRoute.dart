import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoPageRoute Widget"),
      ),
      body: Center(
        child: CupertinoButton.filled(
          child: const Text('Click for page 2'),
          onPressed: () => Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) {
                return const PageTwo();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Page Two'),
      ),
    );
  }
}
