import 'package:flutter/material.dart';

class InputChipWidget extends StatefulWidget {
  const InputChipWidget({super.key});

  @override
  State<InputChipWidget> createState() => _InputChipWidgetState();
}

class _InputChipWidgetState extends State<InputChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InputChip Widget"),
      ),
      body: Center(
        child: InputChip(
          avatar: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://tinyurl.com/5n88rk79',
            ),
          ),
          label: const Text('Einstein'),
          onSelected: (bool newBool) {
            setState(() {
              isSelected = !isSelected;
            });
          },
          selected: isSelected,
          selectedColor: Colors.white38,
          deleteIcon: const Icon(Icons.cancel_outlined),
          onDeleted: () {},
        ),
      ),
    );
  }
}
