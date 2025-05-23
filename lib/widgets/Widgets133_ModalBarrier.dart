import 'package:flutter/material.dart';

class ModalBarrierWidget extends StatefulWidget {
  const ModalBarrierWidget({super.key});

  @override
  State<ModalBarrierWidget> createState() => _ModalBarrierWidgetState();
}

class _ModalBarrierWidgetState extends State<ModalBarrierWidget> {
  bool activated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModalBarrier Widget"),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  activated = !activated;
                });
              },
              child: const Text('Reactivate'),
            ),
          ),
          if (activated)
            Opacity(
              opacity: 0.4,
              child: ModalBarrier(
                dismissible: true,
                // dismissible: false,// neve remove modal barrier
                onDismiss: () {
                  setState(() {
                    activated = !activated;
                    // print('yes');
                  });
                },
                color: Colors.orangeAccent,
              ),
            )
        ],
      ),
    );
  }
}
/*
* A widget that prevents the user from interacting with widgets
* behind itself. The modal barrier is the scrim that is rendered behind
* each route, which generally prevents the user from interacting with
* the route below the current route, and normally partially obscures such routes.
*
* */
