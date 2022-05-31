import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:untitled2/eug.dart';
import 'package:untitled2/fitness%20app/temperature.dart';

import 'fitness app/Heartbeatrate.dart';
import 'fit.dart';

class AppModule extends Module{
  @override
  List<ModularRoute> get routes => [
    //pass your child route
    ChildRoute(Modular.initialRoute, child: (_,__) => Login()),
    ChildRoute('/home', child: (_,__) => Home()),
    ChildRoute('/heart', child: (_,__) => Heart()),
    ChildRoute('/temp', child: (_,__) => Temp()),
  ];
}