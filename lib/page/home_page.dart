import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const name = 'John';
    const email = 'John@example.com';
    return Scaffold(
      body: Column(
        children: [
          const Text('Home Page'),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/profile?name=$name&email=$email');
              },
              child: const Text('Go to Profile')),
        ],
      ),
    );
  }
}
