import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({super.key});

  @override
  State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSwitch Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            CupertinoSwitch(
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),
            const SizedBox(height: 50),
            // In this switch, automatically detect, if ios then consider CupertinoSwitch
            // if android then consider normal style switch for android
            Switch.adaptive(
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
