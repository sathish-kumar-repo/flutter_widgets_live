import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Widget"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        elevation: 10,
      ),
      body: const Center(
        child: Text(
          'Body',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
