import 'package:flutter/material.dart';

class SilverListWidget extends StatelessWidget {
  const SilverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SilverList Widget"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                  tileColor: Colors.orange[100 * (index % 9 + 1)],
                );
              },
              childCount: 50,
            ),
          )
        ],
      ),
    );
  }
}
