import 'dart:async';

import 'package:exemplo_aula_moveis/shared/Cores.dart';
import 'package:flutter/material.dart';

import 'RepositorySplash.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  RepositorySplash repository;

  void startTime() {
    new Timer(Duration(seconds: 2), navigatePage);
  }

  void navigatePage() async {
    print('navigatePage');
    bool flag = await this.repository.verificarDados();
    if (flag) {
      Navigator.pushReplacementNamed(context, 'home');
    }else{
      Navigator.pushReplacementNamed(context, 'login');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.repository = RepositorySplash();
    this.startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.primaria,
      body: Center(
        child: Icon(Icons.person, size: 150),
      ),
    );
  }
}
