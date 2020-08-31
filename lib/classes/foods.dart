import 'package:flutter/material.dart';

class Foods {
  String name, subName, imageLink;
  int amount;

  Foods({String name, String subName, int amount, @required String imageLink}) {
    this.name = name;
    this.subName = subName;
    this.amount = amount;
    this.imageLink = imageLink;
  }
}
