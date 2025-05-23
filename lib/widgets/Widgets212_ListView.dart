import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: const Text('Flutter Mapp'),
            tileColor: Colors.orangeAccent,
            onTap: () {},
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.menu),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
        itemCount: 5,
      ),
    );
  }
}
