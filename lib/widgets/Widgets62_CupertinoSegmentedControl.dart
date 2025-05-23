import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({super.key});

  @override
  State<CupertinoSegmentedControlWidget> createState() =>
      _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  String? _currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSegmentedControl Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoSegmentedControl(
              selectedColor: Colors.black,
              children: {
                'Flutter': Container(
                  color: _currentText == 'Flutter'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Flutter'),
                ),
                'Mapp': Container(
                  color: _currentText == 'Mapp'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Learn'),
                ),
                'Course': Container(
                  color: _currentText == 'Course'
                      ? Colors.orangeAccent[100]
                      : Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Smart'),
                ),
              },
              onValueChanged: (String value) {
                setState(() {
                  _currentText = value;
                });
              },
            ),
            const SizedBox(height: 50),
            _currentText != null
                ? Text(
                    _currentText!,
                    style: const TextStyle(fontSize: 50),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
