import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  String data;
  screen2({Key? key, required this.data}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  //const screen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('screen2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'Hello ${widget.data}',
              style:TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

