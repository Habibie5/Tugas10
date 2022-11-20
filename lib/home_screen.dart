import 'package:flutter/material.dart';
import 'package:tugas10/login_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.purple,
          ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)
      ),
        child: Center(
          child: TextButton(style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            )
          ), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const LoginScreen();
            }));
          }, child: const Text('Go to Login Screen',
          style: TextStyle(
            color: Colors.white
          ),),),
        ),
      ),
    );
  }
}
