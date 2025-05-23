import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetActionWidget extends StatelessWidget {
  const CupertinoActionSheetActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: const Text('Learn Smart'),
                  message: const Text('Your message'),
                  cancelButton: TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      child: const Text('Do Something'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text('Do Something else'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
            child: const Text('CupertinoActionSheet'),
          ),
        ),
      ),
    );
  }
}
