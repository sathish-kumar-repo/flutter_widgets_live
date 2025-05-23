import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  const ClipRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRect Widget"),
      ),
      body: Center(
        child: ClipRect(
          clipper: MyClipper(),
          child: Container(
            width: 3000,
            height: 3000,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
