import 'package:flutter/material.dart';

class ClipOvalWidget extends StatefulWidget {
  const ClipOvalWidget({super.key});

  @override
  State<ClipOvalWidget> createState() => _ClipOvalWidgetState();
}

class _ClipOvalWidgetState extends State<ClipOvalWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipOval Widget"),
      ),
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // print(size);
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
    //return false because we remove 15 from the size of the width
  }
}
