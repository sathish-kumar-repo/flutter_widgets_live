import 'package:flutter/material.dart';

List<Widget> widget = const [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TabPageSelectorWidget extends StatefulWidget {
  const TabPageSelectorWidget({super.key});

  @override
  State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
}

class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: widget.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabPageSelector Widget"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(
            controller: controller,
            children: widget,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          )
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widget.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            hoverElevation: 0,
            elevation: 0,
            child: const Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
