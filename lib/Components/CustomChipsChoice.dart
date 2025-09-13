import 'package:flutter/material.dart';

class CustomChipsChoice extends StatelessWidget {
  const CustomChipsChoice({
    super.key,
    required this.name,
    required this.size,
    required this.changeIndex,
    required this.indexChoice,
  });

  final String name;
  final int size;
  final int indexChoice;
  final ValueChanged<int>? changeIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      //color: (indexChoice),
    );
  }
}
