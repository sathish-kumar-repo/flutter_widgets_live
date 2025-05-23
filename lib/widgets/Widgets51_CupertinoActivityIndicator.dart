import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CupertinoPageScaffold(
        child: Center(
          child: CupertinoActivityIndicator(
            radius: 50,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
