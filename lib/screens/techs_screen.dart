import 'package:flutter/material.dart';

import 'results_screen.dart';

class TechsScreen extends StatefulWidget {
  const TechsScreen({super.key});

  @override
  _TechsScreenState createState() => _TechsScreenState();
}

class _TechsScreenState extends State<TechsScreen> {
  List<String> selectedTechnologies = [];

  void _sendData() {
    if (selectedTechnologies.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(selectedTechnologies)),
        );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Nenhuma tecnologia selecionada'),
            content: const Text('Selecione pelo menos uma tecnologia.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

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
            const Text(
              'Quais tecnologias Mobile você conhece?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            CheckboxListTile(
              title: const Text('Flutter'),
              controlAffinity: ListTileControlAffinity.leading,
              value: selectedTechnologies.contains('Flutter'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedTechnologies.add('Flutter');
                  } else {
                    selectedTechnologies.remove('Flutter');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: const Text('React Native'),
              controlAffinity: ListTileControlAffinity.leading,
              value: selectedTechnologies.contains('React Native'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedTechnologies.add('React Native');
                  } else {
                    selectedTechnologies.remove('React Native');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Kotlin'),
              controlAffinity: ListTileControlAffinity.leading,
              value: selectedTechnologies.contains('Kotlin'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedTechnologies.add('Kotlin');
                  } else {
                    selectedTechnologies.remove('Kotlin');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Java'),
              controlAffinity: ListTileControlAffinity.leading,
              value: selectedTechnologies.contains('Java'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedTechnologies.add('Java');
                  } else {
                    selectedTechnologies.remove('Java');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Ionic'),
              controlAffinity: ListTileControlAffinity.leading,
              value: selectedTechnologies.contains('Ionic'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedTechnologies.add('Ionic');
                  } else {
                    selectedTechnologies.remove('Ionic');
                  }
                });
              },
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 40.0,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(220, 70, 20, 43),
                  foregroundColor: Colors.white,
                ),
                onPressed: _sendData,
                child: const Text('Enviar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
