import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/vaccination_provider.dart';
import '../../models/vaccination.dart';

class VaccinationScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<VaccinationProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Vaccination Schedule')),
      body: ListView.builder(
        itemCount: provider.vaccinations.length,
        itemBuilder: (ctx, index) {
          final vaccine = provider.vaccinations[index];
          return ListTile(
            title: Text(vaccine.name),
            subtitle: Text(vaccine.date.toLocal().toString().split(' ')[0]),
            trailing: Checkbox(
              value: vaccine.completed,
              onChanged: (_) => provider.markCompleted(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Add Vaccination'),
              content: TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Vaccine Name'),
              ),
              actions: [
                TextButton(
                  child: Text('Add'),
                  onPressed: () {
                    provider.addVaccination(
                      Vaccination(
                        name: _nameController.text,
                        date: DateTime.now(),
                      ),
                    );
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
