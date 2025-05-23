import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomScrollView Widget"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 50,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          )
        ],
      ),
    );
  }
}

///The delegate that provides the children for this widget. The children are constructed lazily using this delegate to avoid creating more children than are visible through the Viewport.
/// double maxCrossAxisExtent. The maximum extent of tiles in the cross axis. This delegate will select a cross-axis extent for the tiles that is as large as possible subject to the following conditions: The extent evenly divides the cross-axis extent of the grid.
