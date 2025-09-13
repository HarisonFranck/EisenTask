import 'package:eisentask/Components/EisenCard.dart';
import 'package:eisentask/Pages/AddTask.dart';
import 'package:eisentask/models/RangeBlock.dart';
import 'package:eisentask/models/Task.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      extendBody: false,

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),

          child: Column(
            children: [
              Container(
                height: 110,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "EisenTask",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.settings, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Concentrez-vous sur ce qui compte, stressez moins.",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Column(
                  spacing: 30,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Color(0x33FF5722)
                        EisenCard(
                          cardColor: Color(0x33FF5722),
                          rangeblock: Rangeblock(
                            title: "A faire",
                            number: toDoTasks.length,
                            tasks: toDoTasks,
                            icon: Icon(
                              Icons.check_circle_outline,
                              color: Color.fromARGB(115, 255, 86, 34),
                            ),
                          ),
                        ),
                        //Color(0x332196F3)
                        EisenCard(
                          cardColor: Color(0x332196F3),
                          rangeblock: Rangeblock(
                            title: "A plannifier",
                            number: toPlanTasks.length,
                            tasks: toPlanTasks,
                            icon: Icon(
                              Icons.schedule_rounded,
                              color: Color.fromARGB(115, 33, 149, 243),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Color(0x33FFC107)
                        EisenCard(
                          cardColor: Color(0x33FFC107),
                          rangeblock: Rangeblock(
                            title: "Déléguer",
                            number: toDelegueTasks.length,
                            tasks: toDelegueTasks,
                            icon: Icon(
                              Icons.group,
                              color: Color.fromARGB(115, 255, 193, 7),
                            ),
                          ),
                        ),
                        //Color(0x339E9E9E)
                        EisenCard(
                          cardColor: Color(0x339E9E9E),
                          rangeblock: Rangeblock(
                            title: "Eliminer",
                            number: toRemoveTasks.length,
                            tasks: toRemoveTasks,
                            icon: Icon(
                              Icons.delete,
                              color: Color.fromARGB(115, 158, 158, 158),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
