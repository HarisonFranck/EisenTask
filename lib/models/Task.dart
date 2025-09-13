class Task {
  int id = 0;
  String title = "", description = "";
  DateTime dateStart = DateTime.now();
  DateTime? remindsDate;

  bool isDone = false;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dateStart,

    required this.isDone,
    this.remindsDate,
  });
}

List<Task> toDoTasks = [
  Task(
    id: 0,
    title: "Mariner le poulet",
    description: "Faire du poulet laqué",
    dateStart: DateTime.now(),

    isDone: false,
  ),
  Task(
    id: 1,
    title: "Exercice Sportive",
    description: "Faire du sport tous les jours.",
    dateStart: DateTime.now(),

    isDone: false,
  ),
  Task(
    id: 2,
    title: "Etudier Swift UI",
    description: "Apprendre Swift UI.",
    dateStart: DateTime.now(),

    isDone: false,
  ),
];
List<Task> toPlanTasks = [
  Task(
    id: 0,
    title: "Continuer sur hellochess",
    description: "Finir le travail de synchronisation",
    dateStart: DateTime.now(),

    isDone: false,
  ),
];
List<Task> toDelegueTasks = [
  Task(
    id: 0,
    title: "Colorer les barres",
    description: "Colorer les barres de metal pour déco",
    dateStart: DateTime.now(),

    isDone: false,
  ),
];
List<Task> toRemoveTasks = [
  Task(
    id: 0,
    title: "Regarder des vidéos Zap",
    description: "C'est pas important !",
    dateStart: DateTime.now(),

    isDone: false,
  ),
];
