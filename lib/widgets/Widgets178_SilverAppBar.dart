import 'package:flutter/material.dart';

class SilverAppBarWidget extends StatelessWidget {
  const SilverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true, // true means appbar on the top
            floating: true, // coming back app bar
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flutter Mapp'),
              background: Image.asset(
                'assets/icon/ocean.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Item ${1 + index}'),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
