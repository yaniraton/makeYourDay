import 'package:flutter/material.dart';
import 'opening.dart'; // import 'opening.dart' file
import 'workshops.dart'; // import 'workshops.dart' file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // main color #FFD200
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFFFD200)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OpeningPage(), // set the opening page as the initial route
        '/workshops': (context) => WorkshopsPage(), // add the workshops route
      },
    );
  }
}