import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({super.key});

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}

class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckboxListTile Widget"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CheckboxListTile(
                title: const Text('Checkbox List Tile'),
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue;
                  });
                },
                activeColor: Colors.pinkAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                subtitle: const Text('This is a Subtitle'),
                controlAffinity: ListTileControlAffinity.leading,
                tristate: true,
                contentPadding: const EdgeInsets.all(30),
                hoverColor: Colors.grey,
                splashRadius: 30,
                dense: true,
                isThreeLine: true,
                // visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                mouseCursor: SystemMouseCursors.copy,
                enableFeedback: false,
                selected: true,
                selectedTileColor: Colors.tealAccent,
                enabled: true,
                secondary: const Text("This is Secondary Widget"),
                onFocusChange: (newValue) {
                  print(newValue);
                  //  onFocusChange. final. Handler called when the focus changes. Called with true if this widget's node gains focus, and false if it loses focus.
                },
                checkboxShape: const CircleBorder(eccentricity: 1),
                autofocus: true,
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text('Checkbox List Tile'),
                value: true,
                onChanged: (bool? newValue) {},
                activeColor: Colors.pinkAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                subtitle: const Text('This is a Subtitle'),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text('Checkbox List Tile'),
                value: true,
                onChanged: (bool? newValue) {},
                activeColor: Colors.pinkAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                subtitle: const Text('This is a Subtitle'),
                controlAffinity: ListTileControlAffinity.platform,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
