import 'package:eisentask/models/Task.dart';
import 'package:flutter/material.dart';

class Rangeblock {
  String title = "";
  int number = 0;
  List<Task> tasks = [];
  Icon icon;

  Rangeblock({
    required this.title,
    required this.number,
    required this.tasks,
    required this.icon,
  });
}
