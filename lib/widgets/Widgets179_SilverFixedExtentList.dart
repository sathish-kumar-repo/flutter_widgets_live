import 'package:flutter/material.dart';

class SilverFixedExtentListWidget extends StatelessWidget {
  const SilverFixedExtentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SilverFixedExtentList Widget"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: index.isEven ? Colors.white12 : Colors.white38,
                  child: Text(
                    'Item ${index + 1}',
                    // style: const TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
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
