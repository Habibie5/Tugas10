import 'package:flutter/material.dart';
import 'package:tugas10/home_screen.dart';
import 'package:tugas10/login_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const Tugas());
}

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 10',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        LoginScreen.routes: (context) => const LoginScreen(),
      },
    );
  }
}


