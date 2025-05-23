import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues values = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    // RangeLabels labels=RangeLabels(start, end);
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("RangeSlider Widget"),
      ),
      body: RangeSlider(
        values: values,
        divisions: 10,
        labels: labels,
        onChanged: (newValues) {
          setState(() {
            print(values);
            values = newValues;
            print(newValues);
          });
        },
      ),
    );
  }
}
