import 'package:eisentask/Components/EisenCard.dart';
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

  List<Task> toDoTasks = [
    Task(
      id: 0,
      title: "Mariner le poulet",
      description: "Faire du poulet laqué",
      dateStart: DateTime.now(),
      dateFinish: DateTime.now().add(Duration(days: 5)),
      isDone: false,
    ),
    Task(
      id: 0,
      title: "Exercice Sportive",
      description: "Faire du sport tous les jours.",
      dateStart: DateTime.now(),
      dateFinish: DateTime.now().add(Duration(days: 3)),
      isDone: false,
    ),
  ];
  List<Task> toPlanTasks = [
    Task(
      id: 0,
      title: "Continuer sur hellochess",
      description: "Finir le travail de synchronisation",
      dateStart: DateTime.now(),
      dateFinish: DateTime.now().add(Duration(days: 5)),
      isDone: false,
    ),
  ];
  List<Task> toDelegueTasks = [
    Task(
      id: 0,
      title: "Colorer les barres",
      description: "Colorer les barres de metal pour déco",
      dateStart: DateTime.now(),
      dateFinish: DateTime.now().add(Duration(days: 5)),
      isDone: false,
    ),
  ];
  List<Task> toRemoveTasks = [
    Task(
      id: 0,
      title: "Regarder des vidéos Zap",
      description: "C'est pas important !",
      dateStart: DateTime.now(),
      dateFinish: DateTime.now().add(Duration(days: 5)),
      isDone: false,
    ),
  ];

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
                              Icons.check,
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

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  width: width,
                  height: 80,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
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
                                onPressed: () {
                                  setState(() {
                                    navIndex = 0;
                                  });
                                },
                                icon: Icon(
                                  Icons.home_rounded,
                                  weight: 40,
                                  size: 35,
                                  color:
                                      (navIndex == 0)
                                          ? const Color.fromARGB(
                                            255,
                                            73,
                                            107,
                                            180,
                                          )
                                          : const Color.fromARGB(
                                            150,
                                            73,
                                            107,
                                            180,
                                          ),
                                ),
                              ),
                              IconButton(
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {
                                  setState(() {
                                    navIndex = 1;
                                  });
                                },
                                icon: Icon(
                                  Icons.bar_chart,
                                  weight: 40,
                                  size: 35,
                                  color:
                                      (navIndex == 1)
                                          ? const Color.fromARGB(
                                            255,
                                            73,
                                            107,
                                            180,
                                          )
                                          : const Color.fromARGB(
                                            150,
                                            73,
                                            107,
                                            180,
                                          ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
