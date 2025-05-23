import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget extends StatefulWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  State<CupertinoAlertDialogWidget> createState() =>
      _CupertinoAlertDialogWidgetState();
}

class _CupertinoAlertDialogWidgetState
    extends State<CupertinoAlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoAlertDialog Widget"),
      ),
      body: CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            onPressed: () {
              showCupertinoDialog<void>(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Your content'),
                  actions: <CupertinoDialogAction>[
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      isDestructiveAction: true,
                      child: const Text('No'),
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Yes'),
                    )
                  ],
                ),
              );
            },
            child: const Text('CupertinoAlertDialog'),
          ),
        ),
      ),
    );
  }
}
