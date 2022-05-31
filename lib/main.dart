/*import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      // ignore: prefer_const_constructors
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('how'),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.blue,
              child: Text('are'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.purple,
              child: Text('you'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you clicked me');
        },
        child: const Text('Ok'),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var questIndex = 0;
  void answer() {
    questIndex = questIndex + 1;
    print(questIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quest = [
      'What is your name',
      'what is your favourite colour',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
          backgroundColor: Colors.green,
          centerTitle: true,
          shadowColor: Colors.black,
        ),
        body: Column(
          children: [
            Text(quest[1]),
            ElevatedButton(
                onPressed: answer,
                child: Text('Answer 1')),
            ElevatedButton(onPressed: () {}, child: Text('Answer 2')),
            ElevatedButton(onPressed: () {}, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      // ignore: prefer_const_constructors
      home: MiniProject(),
    ));

class MiniProject extends StatefulWidget {
  const MiniProject({Key? key}) : super(key: key);

  @override
  State<MiniProject> createState() => _MiniProjectState();
}

class _MiniProjectState extends State<MiniProject> {
  int nation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Mini Project'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            nation += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/crypto3.png'),
                radius: 35,
              ),
            ),
            const Divider(
              height: 55,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
            const Text(
              'ASOGWA CHRISTIAN ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'SCHOOL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
            const Text(
              'UNIVERSITY OF NIGERIA NSUKKA ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'NATIONALITY',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Text(
              '$nation',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  Text(
                    'christiannewtonjr@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
  home:  Quotes(),
));
class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quotes> {
  /*List<Nike> quotes = [
    Nike(text: 'be yourself', author: 'chris'),
    Nike(text: 'be yourself', author: 'chris'),
    Nike(text: 'be yourself', author: 'chris')
  ];*/
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //The top of the calculator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                quote(text: '9',),
                quote(text: '8',),
                quote(text: '7',),
                quote(text: '6',),
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                quote(text: '9',),
                quote(text: '8',),
                quote(text: '7',),
                quote(text: '6',),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                quote(text: '9',),
                quote(text: '8',),
                quote(text: '7',),
                quote(text: '6',),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                quote(text: '9',),
                quote(text: '8',),
                quote(text: '7',),
                quote(text: '6',),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                quote(text: '9',),
                quote(text: '8',),
                quote(text: '7',),
                quote(text: '6',),
              ],
            ),
          ],
          /*children: quotes.map((quote) {
            return Text('${quote.text} - ${quote.author}');
          }).toList(),*/
        ),
      ),
    );
  }
}




