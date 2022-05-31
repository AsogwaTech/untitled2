import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/modules1/database.dart';
import 'package:untitled2/route/route.dart';

import 'Home1.dart';


void main(){
  runApp(
    Provider(
      create: (context) => DataBase(),
      child: Myapp(),
      dispose: (context, DataBase dataBase) => dataBase.close(),
    )
  );
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'database testing',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      //home: Home1(),
    );
  }
}

