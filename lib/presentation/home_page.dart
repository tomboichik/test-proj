import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testproject/core/color_options.dart';

/// MainHomePage
class HomePage extends StatefulWidget {
  /// Home page props
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

/// Home page state part
class HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(
      () {
        final random = Random();
        _backgroundColor = Color.fromRGBO(
          random.nextInt(ColorOptions.colorMaxNumber),
          random.nextInt(ColorOptions.colorMaxNumber),
          random.nextInt(ColorOptions.colorMaxNumber),
          1.0,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: const Text(
            'Изменить цвет',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
