import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedTechnologies;

  const ResultsScreen(this.selectedTechnologies);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avaliação'),
        backgroundColor: const Color.fromARGB(220, 70, 20, 43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: selectedTechnologies.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(selectedTechnologies[index]),
                );
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Informações enviadas ao servidor...',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
