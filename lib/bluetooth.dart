import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:untitled2/fitness%20app/homepage.dart';
//import 'package:untitled2/homepage.dart';
import 'package:untitled2/fitness%20app/signup.dart';
import 'package:untitled2/fitness%20app/splashscreen.dart';

import 'fit.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular(); //added by extension
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context, args) => SignUp()),
    ChildRoute('/second', child: (context, args) => Home(), transition: TransitionType.leftToRightWithFade),
  ];
}
