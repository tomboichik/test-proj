import 'package:flutter/material.dart';
import 'package:testproject/presentation/home_page.dart';

void main() => runApp(const Main());

/// Main widget
class Main extends StatelessWidget {
  /// Main widget params
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Color Background',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
