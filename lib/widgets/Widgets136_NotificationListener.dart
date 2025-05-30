import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  const NotificationListenerWidget({super.key});

  @override
  State<NotificationListenerWidget> createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  String message = 'New';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotificationListener Widget"),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.orangeAccent,
            child: Center(
              child: Text(message),
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  setState(() {
                    message = 'Scroll Started';
                  });
                } else if (scrollNotification is ScrollUpdateNotification) {
                  setState(() {
                    message = 'Scroll Updated';
                  });
                } else if (scrollNotification is ScrollEndNotification) {
                  setState(() {
                    message = 'Scroll Ended';
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item: $index'),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
