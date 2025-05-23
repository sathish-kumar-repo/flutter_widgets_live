import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialBanner Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open'),
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: const EdgeInsets.all(20),
                content: const Text('Subscribe!'),
                leading: const Icon(Icons.notifications_active_outlined),
                elevation: 5,
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text('Dismiss'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
