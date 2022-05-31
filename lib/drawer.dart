import 'package:flutter/material.dart';
//import 'package:flutter/src/material/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
        home: Draw(),
    );
  }
}

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer page'),
      ),
      body: const Center(
        child: Text('Drawer practice'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                child: Text('The Header'),
              ),
            ),
            ListTile(
              title: Text('Rice'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:Text('Rice'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
