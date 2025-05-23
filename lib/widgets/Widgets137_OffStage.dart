import 'package:flutter/material.dart';

class OffStageWidget extends StatefulWidget {
  const OffStageWidget({super.key});

  @override
  State<OffStageWidget> createState() => _OffStageWidgetState();
}

class _OffStageWidgetState extends State<OffStageWidget> {
  bool isHided = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OffStage Widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: isHided,
              child: const Icon(
                Icons.flutter_dash,
                size: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isHided = !isHided;
                });
              },
              child: Text(
                'isHided = $isHided',
              ),
            )
          ],
        ),
      ),
    );
  }
}
