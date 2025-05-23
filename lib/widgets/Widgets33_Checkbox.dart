import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox Widget"),
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.orangeAccent,
          tristate: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          checkColor: Colors.black,
          hoverColor: Colors.grey,
          autofocus: true,
          focusColor: Colors.white60,
          // isError: true,
          splashRadius: 30,
          mouseCursor: SystemMouseCursors.help,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
        ),
      ),
    );
  }
}
