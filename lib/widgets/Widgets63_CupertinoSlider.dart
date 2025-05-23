import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({super.key});

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  double _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSlider Widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(_currentValue.toString()),
            const SizedBox(height: 50),
            CupertinoSlider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (selectedValue) {
                setState(() {
                  _currentValue = selectedValue;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
