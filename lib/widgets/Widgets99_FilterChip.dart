import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FilterChip Widget"),
      ),
      body: Center(
        child: FilterChip(
          label: const Text('FilterChip'),
          selected: isSelected,
          onSelected: (bool value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
          avatar: const Text('F'),
        ),
      ),
    );
  }
}
