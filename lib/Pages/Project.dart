import 'package:eisentask/Components/PersonnelCircleStack.dart';
import 'package:eisentask/models/Personnel.dart';
import 'package:eisentask/models/Projet.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  String filter = "La semaine prochaine";
  List<String> filters = [
    "La semaine derniere",
    "Aujourd'hui",
    "La semaine prochaine",
  ];

  List<Map<int, String>> chips = [
    {0: "Tous"},
    {1: "En cours"},
    {2: "Accomplis"},
  ];

  int indexChoice = 0;

  Stream<List<Projet>> getProjetStream() {
    final projects = projets;
    /*Task(
        id: 0,
        title: "Exercice Sportive",
        description: "Faire du sport tous les jours.",
        dateStart: DateTime.now(),
        dateFinish: DateTime.now().add(Duration(days: 3)),
        isDone: false,
      ),*/

    return Stream.value(projects);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        width: width,
        height: height,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Padding(padding: EdgeInsetsGeometry.only(t))
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: width,
              height: height * 0.14,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //color: Colors.black,
                        width: width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 73, 107, 180),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/picture.jpg",
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Franck Mauriat",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "Développeur Flutter & Flutterflow",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications, size: 30),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.5,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Aperçu",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: width / 2.5,

                      height: 40,
                      child: DropdownButtonFormField(
                        icon: Icon(Icons.keyboard_arrow_down_rounded, size: 20),
                        initialValue: filter,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            //borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 0.3,
                              color: Color.fromARGB(255, 73, 107, 180),
                            ),
                          ),
                          border: UnderlineInputBorder(
                            //borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(0, 255, 255, 255),
                              width: 0.3,
                            ),
                          ),
                        ),
                        items:
                            filters.map<DropdownMenuItem<String>>((
                              String value,
                            ) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.black54,

                                    fontSize: 12,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (str) {
                          setState(() {
                            filter = str!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: width,
              height: height / 6.4,
              //decoration: BoxDecoration(color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: width / 1.15,
                      height: height / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black26, width: 0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Projets attribués",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                                //fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 207, 221, 255),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: width / 1.15,
                      height: height / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black26, width: 0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Projets réalisés",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                                //fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 207, 221, 255),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "17",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
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
            Container(
              //padding: EdgeInsets.only(top: 20),
              width: width,
              height: height / 1.9,
              //decoration: BoxDecoration(color: Colors.cyan),
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: 90,
                    //color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Projets $filter",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  chips.map((toElement) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          indexChoice = toElement.keys.first;
                                        });
                                      },
                                      child: Container(
                                        width: 110,
                                        height: 40,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color:
                                              (toElement.keys.first ==
                                                      indexChoice)
                                                  ? Colors.blueGrey
                                                  : Colors.white,
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 70,
                                                child: Text(
                                                  textAlign: TextAlign.center,
                                                  toElement.values.first,
                                                  style: TextStyle(
                                                    color:
                                                        (toElement.keys.first ==
                                                                indexChoice)
                                                            ? Colors.white
                                                            : Colors.black45,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        (toElement.keys.first ==
                                                                indexChoice)
                                                            ? FontWeight.w700
                                                            : FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color:
                                                      (toElement.keys.first !=
                                                              indexChoice)
                                                          ? Colors.black12
                                                          : Color(0xFFF8F9FA),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "22",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: width,
                    height: height / 2.4,
                    //decoration: BoxDecoration(color: Colors.amber),
                    child: StreamBuilder(
                      stream: getProjetStream(),
                      builder: (context, datas) {
                        if (!datas.hasData) {
                          return CircularProgressIndicator();
                        } else {
                          final allProject = datas.data!;

                          return ListView.builder(
                            itemCount: allProject.length,
                            itemBuilder: (context, index) {
                              final projet = allProject[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Container(
                                  width: width,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 8,
                                      bottom: 8,
                                      right: 15,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: width,
                                          height: 30,
                                          //color: Colors.blue,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                projet.title,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              Container(
                                                width: 70,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                              bottom: 5,
                                                            ),
                                                        child: Icon(
                                                          Icons
                                                              .signal_cellular_alt_2_bar_rounded,
                                                          size: 15,
                                                        ),
                                                      ),
                                                      Text(
                                                        projet.priority,
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: width / 1.7,
                                              height: 40,
                                              //color: Colors.amber,
                                              child: Text(
                                                //textAlign: TextAlign.start,
                                                projet.description,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black38,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: width,
                                          height: 30,
                                          //color: Colors.red,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: width / 2.3,
                                                height: 25,
                                                //color: Colors.amber,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  spacing: 10,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors
                                                                .blueGrey
                                                                .shade100,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              15,
                                                            ),
                                                      ),
                                                      height: 20,
                                                      width: 30,
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.work,
                                                          size: 12,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 115,
                                                      child: Text(
                                                        projet.type,
                                                        overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Text(
                                                "${DateFormat('d MMM yyyy', 'fr_FR').format(projet.startDate)} - ${DateFormat('d MMM yyyy', 'fr_FR').format(projet.endDate)}",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 15),
                                          width: width,
                                          height: 44,
                                          //color: Colors.amberAccent,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: width / 1.7,
                                                //color: Colors.red,
                                                child: PersonnelCircleStack(
                                                  personnels: personnels,
                                                ),
                                              ),
                                              Container(
                                                width: 80,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color.fromARGB(
                                                    80,
                                                    33,
                                                    149,
                                                    243,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    projet.status,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                        225,
                                                        33,
                                                        149,
                                                        243,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
