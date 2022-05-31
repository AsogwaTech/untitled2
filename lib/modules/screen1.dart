import 'package:flutter/material.dart';
import 'package:untitled2/modules/screen2.dart';


void main (){
  runApp(pass());
}

class pass extends StatelessWidget {
  const pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'passing data',
      home: passData(),
    );
  }
}
class passData extends StatefulWidget {
  const passData({Key? key}) : super(key: key);

  @override
  _passDataState createState() => _passDataState();
}

class _passDataState extends State<passData> {
  late String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('passing data'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'enter here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                )
              ),
              onChanged: (text) {
                data = text;
              },
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>screen2(data:data)));
                },
                child: Text('go to'),
            ),
          ],
        ),
      ),
    );
  }
}
