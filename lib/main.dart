import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
           Color.fromARGB(255, 205, 163, 26),
          Color.fromARGB(31, 223, 191, 8),
          Color.fromARGB(255, 112, 111, 111)
        ]),
      ),
    ),
  );
}
