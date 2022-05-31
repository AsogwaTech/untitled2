import 'package:flutter/material.dart';

void main(){
  runApp(proApp());
}

class proApp extends StatelessWidget {
  const proApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {

  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
   String data = 'John G';

  void changeData (String dataChanged){
    setState(() {
      data = dataChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Screen2(data:data, changeData:changeData),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key,required this.data,required this.changeData}) : super(key: key);
  final String data;
  final Function(String) changeData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Screen3(data:data, changeData:changeData ),
    );
  }
}

class Screen3 extends StatefulWidget {
  const Screen3({Key? key,required this.data, required this.changeData}) : super(key: key);
  final String data;
  final Function(String) changeData;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.data),
          ElevatedButton(
              onPressed: (){
                widget.changeData('come on');
              },
              child: Text('Change App title'),
          ),
        ],
      ),
    );
  }
}



