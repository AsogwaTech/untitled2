import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: selectBut(),
      ),
    );
  }
}

class selectBut extends StatelessWidget {
  const selectBut ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigate(context);
        },
        child: Text('launch'),
    );
  }
}

void _navigate (BuildContext context) async{
 final result = await Navigator.push(context, MaterialPageRoute(builder:(context) => const SecondScreen()));
 ScaffoldMessenger.of(context);
 //removeCurrentSnackBar()
 print(result);
 (SnackBar(content: Text('$result')));
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'nice one');
                },
                child: Text('I am here'),
            ),
            ElevatedButton(onPressed:() {
              Navigator.pop(context, 'nawaoo');
            },
                child: Text('Good Job'),
            ),
          ],
        ),
      ),
    );
  }
}
