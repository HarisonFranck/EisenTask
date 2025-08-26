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
          padding: const EdgeInsets.only(top: 40.0),

          child: Column(
            children: [
              Container(
                height: 120,
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
                          "Gerer vos tâches avec facilité",
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
                        Container(
                          width: width / 2.3,
                          height: height / 3.3,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 0, color: Colors.black12),
                            color: Color(0x33FF5722),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    "A faire",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width / 2.3,
                          height: height / 3.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x332196F3),
                            border: Border.all(width: 0, color: Colors.black12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    "A plannifier",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width / 2.3,
                          height: height / 3.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x33FFC107),
                            border: Border.all(width: 0, color: Colors.black12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    "Déléguer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width / 2.3,
                          height: height / 3.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0x339E9E9E),
                            border: Border.all(width: 0, color: Colors.black12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    "Éliminer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
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
                                  Icons.bar_chart,
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
                                  Icons.stars,
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
