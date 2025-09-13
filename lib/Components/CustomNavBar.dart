import 'package:eisentask/Pages/AddTask.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onchangeIndex,
  });
  final int currentIndex;
  final ValueChanged<int>? onchangeIndex;

  void handleChange(index) {
    if (index != null && index != currentIndex) {
      onchangeIndex!(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 80,
      child: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          spacing: 20,
          children: [
            Container(
              width: width / 2,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFF8F9FA),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(136, 175, 174, 174),
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 73, 107, 180),
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => handleChange(0),
                    icon: Icon(
                      Icons.home_rounded,
                      weight: 40,
                      size: 35,
                      color:
                          (currentIndex == 0)
                              ? const Color.fromARGB(255, 73, 107, 180)
                              : const Color.fromARGB(150, 73, 107, 180),
                    ),
                  ),
                  IconButton(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => handleChange(1),
                    icon: Icon(
                      Icons.work,
                      weight: 35,
                      size: 32,
                      color:
                          (currentIndex == 1)
                              ? const Color.fromARGB(255, 73, 107, 180)
                              : const Color.fromARGB(150, 73, 107, 180),
                    ),
                  ),
                  IconButton(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () => handleChange(2),
                    icon: Icon(
                      Icons.bar_chart,
                      weight: 40,
                      size: 35,
                      color:
                          (currentIndex == 2)
                              ? const Color.fromARGB(255, 73, 107, 180)
                              : const Color.fromARGB(150, 73, 107, 180),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isDismissible: true,
                  enableDrag: false,
                  isScrollControlled: true,
                  elevation: 4,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: AddTask(),
                    );
                  },
                );
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                  color: const Color.fromARGB(255, 73, 107, 180),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 73, 107, 180),
                  ),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Icon(
                  Icons.add_task_rounded,
                  size: 30,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  weight: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
