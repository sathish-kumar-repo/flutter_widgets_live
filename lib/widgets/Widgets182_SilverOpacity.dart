import 'package:flutter/material.dart';

class SilverOpacityWidget extends StatelessWidget {
  const SilverOpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SilverOpacity Widget"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverOpacity(
            opacity: 0.1,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.5,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.8,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
