import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AbsorbPointer Widget"),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
