import 'package:exemplo_aula_moveis/shared/Cores.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Icon(Icons.person, size: 150),
      ),
    );
  }
}
