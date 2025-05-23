import 'package:flutter/material.dart';

class SementicsWidget extends StatelessWidget {
  const SementicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sementics Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // this can be used for people using voice description inside their app
              Semantics(
                label: 'This is a Flutter logo',
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
              // We don't have semantics of this one
              const FlutterLogo(
                size: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
* It is used by accessibility tools, search engines, and other
* semantic analysis software to determine the meaning of the application.
* Text that contains a semanticsLabel property allows to provide details
* on the information. The Semantics widget annotates the widget tree with
* an outline of its child.
* */
