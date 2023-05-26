import 'package:avaliacao/screens/techs_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';

  void _login() {
    if (username == 'teste' && password == '123') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TechsScreen()),
        );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Acesso não permitido'),
            content: const Text('Verifique as credenciais informadas!'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Nome de usuário',
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
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
                onPressed: _login,
                child: const Text('Entrar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
