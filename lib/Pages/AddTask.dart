import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:eisentask/Components/DatePickerField.dart';
import 'package:eisentask/Components/TimePickerField.dart';
import 'package:eisentask/models/Task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  // Déclaration des variables d'état
  late TextEditingController _titleController;
  late TextEditingController _descController;
  late TextEditingController _dateStart;
  late TextEditingController _timeStart;
  late TextEditingController _dateRemind;
  late TextEditingController _timeRemind;
  late bool _notifChecked;
  final ScrollController _scrollController = ScrollController();
  String _selectedDescription = "";

  final List<String> _descriptions = [
    "Urgent et Important",
    "Urgent mais pas Important",
    "Important mais pas Urgent",
    "Ni Urgent ni Important",
  ];

  void _scrollToEnd() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descController = TextEditingController();
    _dateStart = TextEditingController(text: "jj/mm/aaaa");
    _timeStart = TextEditingController(text: "hh:mm");
    _dateRemind = TextEditingController(text: "jj/mm/aaaa");
    _timeRemind = TextEditingController(text: "hh:mm");

    _notifChecked = false;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              spacing: 15,
              children: [
                const Icon(
                  Icons.add_task_rounded,
                  color: Color.fromARGB(255, 73, 107, 180),
                ),
                const Text(
                  "Ajouter une nouvelle tâche",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  spacing: 20,
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        hintText: "Saisir le titre de la tâche",
                        labelText: "Titre de la tâche",
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 13,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    TextField(
                      controller: _descController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        hintText: "Saisir la description",
                        labelText: "Description de la tâche",
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 13,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 5,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: const Text(
                                    "Date Début : ",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              DatePickerField(
                                context: context,
                                dateController: _dateStart,
                              ),
                            ],
                          ),
                          Column(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: const Text(
                                    "Heure de Début : ",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              TimePickerField(
                                context: context,
                                timeController: _timeStart,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          SizedBox(
                            width: 30,
                            child: CheckboxListTile(
                              activeColor: Color.fromARGB(255, 73, 107, 180),
                              checkColor: Color.fromARGB(255, 246, 246, 246),

                              value: _notifChecked,
                              onChanged: (check) {
                                setState(() {
                                  _notifChecked = check ?? false;
                                });
                                _scrollToEnd();
                              },
                            ),
                          ),
                          const Text(
                            "Activer les notifications de rappel",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),

                    if (_notifChecked) ...[
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              spacing: 5,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    child: const Text(
                                      "Date de Rappel : ",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                DatePickerField(
                                  context: context,
                                  dateController: _dateStart,
                                ),
                              ],
                            ),
                            Column(
                              spacing: 5,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: const Text(
                                      "Heure de Rappel : ",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                TimePickerField(
                                  context: context,
                                  timeController: _timeRemind,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    DropdownButtonFormField<String>(
                      initialValue:
                          _selectedDescription != ""
                              ? _descriptions
                                  .where((desc) => desc == _selectedDescription)
                                  .first
                              : _descriptions.first,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 73, 107, 180),
                          ),
                        ),
                        hintText: "Sélectionner le Quadrant",
                        labelText: "Quadrant",
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 13,
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedDescription = newValue!;
                        });
                      },
                      items:
                          _descriptions.map<DropdownMenuItem<String>>((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 73, 107, 180),
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 255, 255, 255),
                  ),
                  fixedSize: WidgetStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 55),
                  ),
                ),
                onPressed: () {
                  if (_titleController.text != "" &&
                      _descController.text != "" &&
                      _dateStart.text != "" &&
                      _timeStart.text != "" &&
                      _selectedDescription != "" &&
                      _dateStart.text != "jj/mm/aaaa" &&
                      _timeStart.text != "hh/mm") {
                    print("VERIFIED");

                    DateFormat format = DateFormat("dd/MM/yyyy");
                    Task(
                      id: 0,
                      title: _titleController.text,
                      description: _descController.text,
                      dateStart: format.parse(_dateStart.text),
                      isDone: false,
                    );
                  } else {
                    print("Veuillez completer tous les champs");
                  }
                },
                child: const Text(
                  "Créer la tâche",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
