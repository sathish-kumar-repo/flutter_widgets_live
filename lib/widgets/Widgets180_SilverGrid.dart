import 'package:flutter/material.dart';

class SilverGridWidget extends StatelessWidget {
  const SilverGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SilverGrid Widget"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9 + 1)],
                  child: Text('Item ${index + 1}'),
                );
              },
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
