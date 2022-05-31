import 'package:flutter/material.dart';
import 'package:untitled2/fitness%20app/signup.dart';
import 'package:untitled2/fitness%20app/signup.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: Splash(),
));

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignUp()));
  }

  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Text(
            'SPLASH SCREEN PAGE',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
