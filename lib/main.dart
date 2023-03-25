import 'package:flutter/material.dart';
import 'package:rocketseat/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      routes: {
        "/": (context) => MainScreen(),
      },
    );
  }
}
