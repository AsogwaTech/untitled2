import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//List i = [23,34,45,45,46,34];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Orientation Demo';

    return const MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  const OrientationList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.calendar_today_rounded, color: Colors.purple),
            onPressed: (){
              print('you Pressed me');
            },
          ),
          title: Text(title),
      ),
      body: Column(
        children: [
          Container(
            child: OrientationBuilder(
              builder: (context, orientation) {
            return Expanded(child:GridView.count(
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              crossAxisCount: 2,
              children: [
                Container(
                    decoration: BoxDecoration(//color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('fitness/Running-amico.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
                Container(
                    decoration: BoxDecoration(//color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('assets/crypto1.jpg'),
                      ),
                    ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
                Container(
                    decoration: BoxDecoration(//color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('assets/crypto1.jpg'),
                      ),
                    ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
                Container(
                    decoration: BoxDecoration(//color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('assets/crypto1.jpg'),
                      ),
                    ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
                Container(
                    decoration: BoxDecoration(//color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage('assets/crypto1.jpg'),
                      ),
                    ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
                Container(
                  decoration: BoxDecoration(//color: Colors.purple,
                    image: DecorationImage(
                      image: AssetImage('assets/crypto1.jpg'),
                    ),
                  ),
                    height: 30,
                    width: 30,
                    child: Text('mama')
                ),
              ],

            ));}
    ),
          ),
        ],
      ),
    );
    }
}
