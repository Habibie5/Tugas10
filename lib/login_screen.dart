import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routes = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController pass = TextEditingController();
  String Password = '';
  String Username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purple,
            ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)
        ),
        child: Center(
          child: Column(
            children: [
              Padding(padding: new EdgeInsets.symmetric(vertical: 20,),
              ),
              Text('Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(20),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                      Container(
                        width: 300,
                        child: Expanded(
                          child: TextFormField(
                            controller: fullname,
                            decoration: InputDecoration(
                              prefixIcon: const Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                child: Icon(Icons.person_outline_outlined,
                                  color: Colors.grey,),),
                              hintText: 'Type your Username',
                              contentPadding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 40),),
                      Container(
                        width: 300,
                        child: Expanded(
                          child: TextFormField(
                            controller: pass,
                            decoration: InputDecoration(
                              prefixIcon: const Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                child: Icon(Icons.lock_outlined,
                                  color: Colors.grey,),),
                              hintText : 'Type your Password',
                              contentPadding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 120),),
                      TextButton(
                          onPressed: (){
                            setState(() {
                            });
                          },
                          child: const Text('Forgot Password?',
                            style: TextStyle(
                                color: Colors.white
                            ),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        child: TextButton(style: TextButton.styleFrom(
                          backgroundColor: Colors.black45,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                          onPressed: () {
                            setState(() {
                              Username = fullname.text;
                              Password = pass.text;
                            });
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 50),
                          child: Text('Username : $Username',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              color: Colors.blue
                            ),),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        Text('Password : $Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}