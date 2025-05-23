import 'package:flutter/material.dart';

class GridTileBarWidget extends StatelessWidget {
  const GridTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridTileBar Widget"),
      ),
      body: SizedBox(
        height: 400,
        width: 300,
        child: GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Flutter Mapp'),
            trailing: Icon(Icons.menu),
          ),
          footer: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
          child: Image.network(
            'https://tinyurl.com/yc4pctt5',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
