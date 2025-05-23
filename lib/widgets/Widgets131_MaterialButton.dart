import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatefulWidget {
  const MaterialButtonWidget({super.key});

  @override
  State<MaterialButtonWidget> createState() => _MaterialButtonWidgetState();
}

class _MaterialButtonWidgetState extends State<MaterialButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialButton Widget"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          highlightColor: Colors.orangeAccent,
          highlightElevation: 5,
          splashColor: Colors.redAccent,
          color: Colors.blueGrey,
          child: const Text('Click'),
        ),
      ),
    );
  }
}
