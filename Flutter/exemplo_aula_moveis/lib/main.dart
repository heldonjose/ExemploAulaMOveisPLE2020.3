import 'package:exemplo_aula_moveis/app/home/Home.dart';
import 'package:exemplo_aula_moveis/app/login/Login.dart';
import 'package:exemplo_aula_moveis/app/splash/SplashScreem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> rotas = {
      'home': (_) => Home(),
      'login': (_) => Login(),

    };

    return MaterialApp(
      home: Splash(),
      routes: rotas,
    );
  }
}
