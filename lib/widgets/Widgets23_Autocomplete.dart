import 'package:flutter/material.dart';

class AutocompleteWidget extends StatefulWidget {
  const AutocompleteWidget({super.key});

  @override
  State<AutocompleteWidget> createState() => _AutocompleteWidgetState();
}

class _AutocompleteWidgetState extends State<AutocompleteWidget> {
  static const List<String> listItems = [
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autocomplete Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print("The $item was selected");
          },
        ),
      ),
    );
  }
}
