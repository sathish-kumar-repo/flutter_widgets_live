import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Widget"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => GridTile(
          header: const GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text('Flutter Mapp'),
            trailing: Icon(
              Icons.menu,
            ),
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

/*
* You can use this also
* GridView(
*     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
*     children:[]
* )
* */
