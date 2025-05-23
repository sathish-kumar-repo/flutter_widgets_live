// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class WillPopScopeWidget extends StatelessWidget {
  const WillPopScopeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WillPopScope Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const NextPage();
                },
              ),
            );
          },
          child: const Text('Next Page'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text("Next Page"),
        ),
        body: const Center(),
      ),
      onWillPop: () async {
        return false; // therefore it block the back button
      },
    );
  }
}
