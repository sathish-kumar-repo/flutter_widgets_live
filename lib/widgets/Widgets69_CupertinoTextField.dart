import 'package:flutter/cupertino.dart';

class CupertinoTextFieldWidget extends StatefulWidget {
  const CupertinoTextFieldWidget({super.key});

  @override
  State<CupertinoTextFieldWidget> createState() =>
      _CupertinoTextFieldWidgetState();
}

class _CupertinoTextFieldWidgetState extends State<CupertinoTextFieldWidget> {
  final TextEditingController _textController =
      TextEditingController(text: 'Flutter Mapp');

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemOrange,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: CupertinoTextField(
              controller: _textController,
            ),
          ),
        ),
      ),
    );
  }
}
