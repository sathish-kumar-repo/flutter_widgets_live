import 'package:flutter/material.dart';

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({super.key});

  @override
  State<ExpansionPanelListWidget> createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  final List<Item> _data = List<Item>.generate(
    10,
    (int index) {
      return Item(
        headerText: 'Item $index',
        expandedText: 'This is item number $index',
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionPanelList Widget"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              // print('${_data[index]} - ${_data[index].isExpanded}');
              // print(isExpanded);
              // print('${_data[index]} - ${_data[index].isExpanded}');

              //one way
              // _data[index].isExpanded = !_data[index].isExpanded;
              //another way
              _data[index].isExpanded = isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerText),
                );
              },
              body: ListTile(
                title: Text(item.expandedText),
                subtitle: const Text('To delete this item, click trash icon'),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.orangeAccent,
                ),
                onTap: () {
                  setState(() {
                    // _data.removeWhere((element) => false)
                    _data.removeWhere(
                      (Item currentItem) => item == currentItem,
                    );
                  });
                },
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
