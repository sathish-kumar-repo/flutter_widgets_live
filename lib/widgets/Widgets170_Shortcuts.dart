import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}

class ShortcutsWidget extends StatefulWidget {
  const ShortcutsWidget({super.key});

  @override
  State<ShortcutsWidget> createState() => _ShortcutsWidgetState();
}

class _ShortcutsWidgetState extends State<ShortcutsWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shortcuts Widget"),
      ),
      body: Shortcuts(
        shortcuts: <ShortcutActivator, Intent>{
          LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
          LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
        },
        child: Actions(
          actions: {
            IncrementIntent: CallbackAction(
              onInvoke: (intent) => setState(() {
                count = count + 1;
              }),
            ),
            DecrementIntent: CallbackAction(
              onInvoke: (intent) => setState(() {
                count = count - 1;
              }),
            ),
          },
          // focus is important otherwise is not work
          child: Focus(
            child: Center(
              child: Text(
                'Counter: $count',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
