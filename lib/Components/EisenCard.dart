import 'package:eisentask/Components/EisenTileTask.dart';
import 'package:eisentask/models/RangeBlock.dart';
import 'package:eisentask/models/Task.dart';
import 'package:flutter/material.dart';

class EisenCard extends StatefulWidget {
  EisenCard({super.key, required this.cardColor, required this.rangeblock});
  Color cardColor;
  Rangeblock rangeblock;

  @override
  State<EisenCard> createState() => _EisenCardState();
}

class _EisenCardState extends State<EisenCard> {
  Stream<List<Task>> getTaskStream() {
    final tasks = widget.rangeblock.tasks;
    /*Task(
        id: 0,
        title: "Exercice Sportive",
        description: "Faire du sport tous les jours.",
        dateStart: DateTime.now(),
        dateFinish: DateTime.now().add(Duration(days: 3)),
        isDone: false,
      ),*/

    return Stream.value(tasks);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width / 2.3,
      height: height / 3.3,
      decoration: BoxDecoration(
        border: Border.all(color: widget.cardColor, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: widget.cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  widget.rangeblock.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(126, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      widget.rangeblock.number.toString(),
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: height / 4.3,
              child: StreamBuilder<List<Task>>(
                stream: getTaskStream(),
                builder: (context, data) {
                  if (!data.hasData) {
                    return CircularProgressIndicator();
                  }
                  if (data.hasData) {
                    final tasks = data.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasks[index];
                        return Column(
                          children: [
                            EisenTileTask(
                              height: 65,
                              width: width,
                              colorTile: widget.cardColor,
                              task: task,
                              icon: widget.rangeblock.icon,
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      },
                    );
                  }
                  return Text(
                    "Aucun tâche..",
                    style: TextStyle(color: Colors.white54),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
