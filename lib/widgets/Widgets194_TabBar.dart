import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
          title: Text('Flutter Mapp'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
            Container(
              color: Colors.redAccent,
              child: const Icon(Icons.settings),
            ),
            Container(
              color: Colors.blueGrey,
              child: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
