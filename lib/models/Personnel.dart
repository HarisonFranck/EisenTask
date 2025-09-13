class Personnel {
  int id = 0;
  String firstname = "", lastname = "", imagePath = "", job = "";
  DateTime birthDate = DateTime(2001, 05, 04);

  Personnel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.birthDate,
    required this.imagePath,
    required this.job,
  });
}

List<Personnel> personnels = [
  Personnel(
    id: 0,
    firstname: "Etienne",
    lastname: "Jean",
    birthDate: DateTime(2000, 05, 12),
    imagePath: "assets/images/homme.jpg",
    job: "Product Owner",
  ),
  Personnel(
    id: 1,
    firstname: "Etienne",
    lastname: "Jean",
    birthDate: DateTime(2000, 05, 12),
    imagePath: "assets/images/femme.jpg",
    job: "Product Owner",
  ),
  Personnel(
    id: 2,
    firstname: "Etienne",
    lastname: "Jean",
    birthDate: DateTime(2000, 05, 12),
    imagePath: "assets/images/picture.jpg",
    job: "Product Owner",
  ),
];
