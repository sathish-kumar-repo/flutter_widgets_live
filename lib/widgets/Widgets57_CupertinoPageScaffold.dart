import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldWidget extends StatelessWidget {
  const CupertinoPageScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: const Color.fromARGB(255, 18, 32, 47),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
          middle: const Text('Learn Smart'),
          transitionBetweenRoutes: true,
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/back.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
