import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("LimitedBox Widget"),
      ),
      body: const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // only Height is working
          // scrollDirection: Axis.horizontal, // only width is working
          child: LimitedBox(
            maxHeight: 50,
            maxWidth:
                300, // this is because the limited box only if the parent is unconstrained widget
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                title: Text('Learn Smart'),
              ),
            ), //
          ),
        ),
      ),
    );
  }
}
