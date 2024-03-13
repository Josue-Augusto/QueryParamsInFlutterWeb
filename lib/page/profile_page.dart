import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, List<String>>;
    return Scaffold(
      body: Center(
        child: Text(
            'Name: ${arguments['name']?.first.toString() ?? ''}\n Email: ${arguments['email']?.first.toString() ?? ''}'),
      ),
    );
  }
}
