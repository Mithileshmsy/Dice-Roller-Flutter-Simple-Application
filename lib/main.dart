import 'package:flutter/material.dart';
import 'package:helloworld/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Colors.deepPurpleAccent, Colors.purple),
    ),
  ));
}
