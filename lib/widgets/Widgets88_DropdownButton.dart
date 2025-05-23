import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropdownButton Widget"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.menu),
          style: const TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'One',
              child: Text(
                'One',
                style: TextStyle(color: Colors.black),
              ),
            ),
            DropdownMenuItem<String>(
              value: 'Two',
              child: Text(
                'Two',
                style: TextStyle(color: Colors.black),
              ),
            ),
            DropdownMenuItem<String>(
              value: 'Three',
              child: Text(
                'Three',
                // style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
