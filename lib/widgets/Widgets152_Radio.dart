import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

List<String> options = [
  'Option 1',
  'Option 2',
];

class _RadioWidgetState extends State<RadioWidget> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Widget"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Option 1'),
            leading: Radio(
              value: options[0],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                  // print('1 $currentOption');
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Option 2'),
            leading: Radio(
              value: options[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                  // print('2 $currentOption');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
