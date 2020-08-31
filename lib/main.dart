import 'package:flutter/material.dart';
import 'package:foodie_transparent/screens/screen_one.dart';

void main() {
  runApp(Foodie());
}

class Foodie extends StatefulWidget {
  @override
  _FoodieState createState() => _FoodieState();
}

class _FoodieState extends State<Foodie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}
