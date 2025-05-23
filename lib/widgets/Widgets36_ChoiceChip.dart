import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChoiceChip Widget"),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text(
            'Choice Chip',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          selected: isSelected,
          selectedColor: Colors.pinkAccent,
          onSelected: (newState) {
            setState(() {
              isSelected = newState;
            });
          },
          tooltip: 'Choice Chip',
          pressElevation: 5,
          elevation: 20,
          padding: const EdgeInsets.all(20),
          surfaceTintColor: Colors.blue,
        ),
      ),
    );
  }
}
