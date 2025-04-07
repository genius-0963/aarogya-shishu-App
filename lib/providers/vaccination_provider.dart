import 'package:flutter/material.dart';
import '../models/vaccination.dart';

class VaccinationProvider with ChangeNotifier {
  List<Vaccination> _vaccinations = [];

  List<Vaccination> get vaccinations => _vaccinations;

  void addVaccination(Vaccination vaccination) {
    _vaccinations.add(vaccination);
    notifyListeners();
  }

  void markCompleted(int index) {
    _vaccinations[index] = Vaccination(
      name: _vaccinations[index].name,
      date: _vaccinations[index].date,
      completed: true,
    );
    notifyListeners();
  }
}
