import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView Widget"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.orangeAccent,
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
