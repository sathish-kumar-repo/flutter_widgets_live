import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchTextFieldWidget extends StatefulWidget {
  const CupertinoSearchTextFieldWidget({super.key});

  @override
  State<CupertinoSearchTextFieldWidget> createState() =>
      _CupertinoSearchTextFieldWidgetState();
}

class _CupertinoSearchTextFieldWidgetState
    extends State<CupertinoSearchTextFieldWidget> {
  final TextEditingController _textController =
      TextEditingController(text: 'Flutter Mapp');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSearchTextField Widget"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/back.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CupertinoSearchTextField(
            backgroundColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            controller: _textController,
          ),
        ),
      ),
    );
  }
}
