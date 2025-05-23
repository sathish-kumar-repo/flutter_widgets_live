import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridTile Widget"),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: GridTile(
            header: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text('Header'),
              ),
            ),
            footer: Container(
              height: 40,
              color: Colors.black38,
              child: const Center(
                child: Text('Header'),
              ),
            ),
            child: Image.network(
              'https://tinyurl.com/yc4pctt5',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
