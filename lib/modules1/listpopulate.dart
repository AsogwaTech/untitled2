

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/modules1/dialog%20box.dart';
import 'package:untitled2/modules1/list.dart';

import '../provider/provider.dart';


void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(_) => UserNotifier())
  ],
  child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dynamic list',
      home: listApp(),
    );
  }
}

class listApp extends StatefulWidget {
  const listApp({Key? key}) : super(key: key);

  @override
  _listAppState createState() => _listAppState();
}

class _listAppState extends State<listApp> {


  // List<USerInput> UserList =[];
  //
  // void addUserInfo (USerInput userinput ){
  //   setState(() {
  //     UserList.add(userinput);
  //   });
  // }


  @override
  Widget build(BuildContext context) {

    void showUserDialog(){// the function that should bw called when the button is pressed to display the dialog box
      showDialog(context: context, builder: (_){
        return AlertDialog(
          content: DialogUser(),//the name of the class that holds the text form field.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      });
    }

    /*List<USerInput> UserList =[];

    void addUserInfo (USerInput userinput ){
      setState(() {
        UserList.add(userinput);
      });
    }*/

    UserNotifier userNotifier = Provider.of<UserNotifier>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:showUserDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('My Dynamic List'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
            itemBuilder: (ctx, index){
              return Card(
                margin: EdgeInsets.all(4),
                elevation: 8,
                child:ListTile(
                  leading: Consumer<UserNotifier>(
                    builder: (_, notifier, __)=>Text(notifier.UserList[index].UserBirthDate, style: TextStyle(fontSize: 20, color: Colors.blue),),
                  ),
                  title :Consumer<UserNotifier>(
                    builder: (_, notifier, __)=>Text(notifier.UserList[index].UserName, style: TextStyle(fontSize: 20, color: Colors.blue),),
                  ),
                subtitle: Consumer<UserNotifier>(
                  builder: (_, notifier, __)=>Text(notifier.UserList[index].Email, style: TextStyle(fontSize: 16, color: Colors.redAccent),),
                ),
                 trailing: Consumer<UserNotifier>(
              builder: (_, notifier, __)=>Text(notifier.UserList[index].UserPhone, style: TextStyle(fontSize: 15, color: Colors.pink),),
                 ),
              ),);
            },
            itemCount:userNotifier.UserList.length,
        ),
      ),
    );
  }
}

