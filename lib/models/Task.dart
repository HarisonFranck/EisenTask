class Task {
  int id = 0;
  String title = "", description = "";
  DateTime dateStart = DateTime.now(), dateFinish = DateTime.now();
  bool isDone = false;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.dateStart,
    required this.dateFinish,
    required this.isDone,
  });
}
