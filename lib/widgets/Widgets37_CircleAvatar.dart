import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatefulWidget {
  const CircleAvatarWidget({super.key});

  @override
  State<CircleAvatarWidget> createState() => _CircleAvatarWidgetState();
}

class _CircleAvatarWidgetState extends State<CircleAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatar Widget"),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('assets/images/3.jpg'),
          backgroundColor: Colors.deepPurple,
          // foregroundImage: AssetImage('assets/images/1.jpg'),
          foregroundColor: Colors.pinkAccent,
          child: Text(
            'Hi',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
/*
double radius: Raidus of the avatar. If this is specified, neither minRadius nor maxRadius may be specified. If neither this, minRadius nor maxRadius is specified, defaults to 20.
double minRadius: The minimum size of the avatar.If this is specified, raidus may not be specified. Defaults to 0.
double maxRadius: he maximum size of the avatar. If this is specified, raidus may not be specified. Defaults to double.infinity.*/
