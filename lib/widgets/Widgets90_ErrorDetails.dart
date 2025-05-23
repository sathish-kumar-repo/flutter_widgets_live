import 'package:flutter/material.dart';

class ErrorDetailsWidget extends StatefulWidget {
  const ErrorDetailsWidget({super.key});

  @override
  State<ErrorDetailsWidget> createState() => _ErrorDetailsWidgetState();
}

class _ErrorDetailsWidgetState extends State<ErrorDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ErrorDetails Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Check Console or Terminal"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // this code is following after the main
                try {
                  throw ('This is an error');
                } catch (error) {
                  // debugPrint('Error: $error');
                  debugPrint(error.toString());
                }
              },
              child: const Text('Click here'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                try {
                  throw ('This is an error');
                } catch (error) {
                  FlutterError.reportError(
                    FlutterErrorDetails(
                      exception: error,
                      library: 'CUSTOM MESSAGE 1',
                      context: ErrorSummary('CUSTOM MESSAGE 2'),
                    ),
                  );
                }
              },
              child: const Text('Click here'),
            ),
          ],
        ),
      ),
    );
  }
}
