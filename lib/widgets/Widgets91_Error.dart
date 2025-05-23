import 'package:flutter/material.dart';

class ErrorWidget extends StatefulWidget {
  const ErrorWidget({super.key});

  @override
  State<ErrorWidget> createState() => _ErrorWidgetState();
}

class _ErrorWidgetState extends State<ErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Widget"),
      ),
      body: Center(child: Text(code)),
    );
  }
}

var code = '''
void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool isDebug = false; // to see red screen is debug mode
    assert(() {
      isDebug = true;
      return true;
    }()); // this function is only triggered in debug mode
    if (isDebug) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error\n\${details.exception}',
        style: TextStyle(
          color: Colors.orangeAccent,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  };
  runApp(const MyApp());
}''';
