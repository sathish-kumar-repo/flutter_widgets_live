import 'package:flutter/material.dart';

class MergeSemanticsWidget extends StatelessWidget {
  const MergeSemanticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var darkBlue = const Color(0XFF12202F);
    return MaterialApp(
      showSemanticsDebugger: true,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MergeSemantics Widget"),
        ),
        body: const Column(
          children: [
            //The semantics is only one block right now
            MergeSemantics(
              child: Row(
                children: [
                  Text('Learn'),
                  Text('Smart'),
                ],
              ),
            ),
            SizedBox(height: 10),
            //But if we remove the merge semantic widget you will see that we have two different semantic block
            Row(
              children: [
                Text('Learn'),
                Text('Smart'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
