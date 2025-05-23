import 'package:flutter/material.dart';

class SilverToBoxAdapterWidget extends StatelessWidget {
  const SilverToBoxAdapterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SilverToBoxAdapter Widget"),
      ),
      body: const CustomScrollView(
        slivers: [
          //any widget put inside the child
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Sliver to Box Adapter'),
              ),
            ),
          ),
          // Text('sathish') // this is error
        ],
      ),
    );
  }
}
