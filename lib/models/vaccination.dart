class Vaccination {
  final String name;
  final DateTime date;
  final bool completed;

  Vaccination({required this.name, required this.date, this.completed = false});
}
