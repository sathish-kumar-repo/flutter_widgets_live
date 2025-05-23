import 'package:flutter/material.dart';

class MaterialAppWidget extends StatefulWidget {
  const MaterialAppWidget({super.key});

  @override
  State<MaterialAppWidget> createState() => _MaterialAppWidgetState();
}

class _MaterialAppWidgetState extends State<MaterialAppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,

      /// this is control language of your applications
      // localizationsDelegates: [
      //
      // ],
      // supportedLocales: const [
      //   Locale('en', ''), // English, no country code
      //   Locale('es', ''), // Spanish, no country code
      // ],
      // check the website flutter.dev
      // check the youtube video(title MaterialApp)
      // https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization
      home: Scaffold(),
    );
  }
}
