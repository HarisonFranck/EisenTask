import 'package:eisentask/models/Personnel.dart';

class Projet {
  Projet({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.priority,
    required this.type,
    required this.startDate,
    required this.endDate,
    this.personnels,
  });

  int id = 0;
  String title = "", description = "";
  String status = "On going";
  String priority = "";
  String type = "Marketing Digital";
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(Duration(days: 1));
  List<Personnel>? personnels;
}

List<Projet> projets = [
  Projet(
    id: 0,
    title: "Finir hellochess",
    description: "Une app multiplateforme de gestion de tournois d'echecs.",
    status: 'On going',
    priority: 'haute',
    type: 'Développement & travail',
    startDate: DateTime.now(),
    endDate: DateTime.now().add(Duration(days: 15)),
  ),
  Projet(
    id: 1,
    title: "Finaliser mauriat portfolio",
    description: "Finaliser la mise à jour de ma nouvelle portfolio.",
    status: 'On going',
    priority: 'haute',
    type: 'Développement & Investissement',
    startDate: DateTime.now().subtract(Duration(days: 3)),
    endDate: DateTime.now().add(Duration(days: 10)),
  ),
  Projet(
    id: 2,
    title: "Faire une app Swift UI",
    description: "Appliquer la clean Architecture en Swift UI",
    status: 'On going',
    priority: 'moyenne',
    type: 'Développement',
    startDate: DateTime.now(),
    endDate: DateTime.now().add(Duration(days: 5)),
  ),
];
