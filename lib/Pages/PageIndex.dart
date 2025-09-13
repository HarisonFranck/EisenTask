import 'package:eisentask/Components/customNavBar.dart';
import 'package:eisentask/Pages/Home.dart';
import 'package:eisentask/Pages/Project.dart';
import 'package:eisentask/Pages/Stats.dart';
import 'package:flutter/material.dart';

class PageIndex extends StatefulWidget {
  const PageIndex({super.key});

  @override
  State<PageIndex> createState() => _PageIndexState();
}

class _PageIndexState extends State<PageIndex> {
  int currentIndex = 0;
  final List<Widget> pages = [Home(), Project(), Stats()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: currentIndex, children: pages),

          Positioned(
            bottom: 15,
            child: CustomNavBar(
              currentIndex: currentIndex,
              onchangeIndex: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
