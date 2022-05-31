import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/modules1/Add_User.dart';
import 'package:untitled2/modules1/Home1.dart';

import '../modules1/edit _employee.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;// This is the argument we are passing to when edited

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => Home1());
      case '/add_User':
        return MaterialPageRoute(builder: (_)=> AddUser());
      case '/edit_User':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => EditUser(id:args,));// arguments defined above
        }
        return null!;
      default :
        return null!;
    }
  }
}