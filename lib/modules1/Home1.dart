import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:untitled2/modules1/Add_User.dart';

import 'database.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  //late DataBase _dataBase;

  @override
  void initState(){
    super.initState();
   // _dataBase = DataBase();// initialize the database
  }


  @override
  void dispose() {
   // _dataBase.close();
    // closes the database connections
    // _userNameController.dispose();
    // _emailController.dispose();
    // _phoneNumberController.dispose();
    // _dateOfBirthController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Details'),
        centerTitle: true,
      ),

      // body: StreamBuilder(
      //   stream:  _dataBase.WatchAllUserDetail(),
      //   builder: (ctx, AsyncSnapshot){
      //     final List<UserDetail>? userdetails = AsyncSnapshot.data as List<UserDetail>?;
      //     if (AsyncSnapshot.connectionState != ConnectionState.done){
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     if (AsyncSnapshot.hasError){
      //       return Center(
      //         child: Text(AsyncSnapshot.error.toString()),
      //       );
      //     }
      //     if (userdetails != null){
      //       return ListView.builder(
      //                   itemCount: userdetails.length,
      //                     itemBuilder: (ctx,index){
      //                       final userdetail = userdetails[index];
      //                       return GestureDetector(
      //                         onTap: (){
      //                           Navigator.pushNamed(context, '/edit_User', arguments: userdetail.id);//The userdetail here is to get the integer index which will serve as the pointer to the id
      //                         },
      //                         child: Card(
      //                           color: Colors.grey,
      //                           shape: const RoundedRectangleBorder(
      //                             side: BorderSide(
      //                               color: Colors.green,
      //                               width: 1.5,
      //                               style: BorderStyle.solid,
      //                             ),borderRadius: BorderRadius.only(
      //                             topLeft: Radius.circular(18),
      //                             bottomRight: Radius.circular(18),
      //                           ),
      //                           ),
      //                           child: Padding(
      //                             padding: const EdgeInsets.all(8.0),
      //                             child: Column(
      //                               crossAxisAlignment:  CrossAxisAlignment.start,
      //                               children: [
      //                                 Text(userdetail.id.toString()),
      //                                 Text(userdetail.UserName.toString()),
      //                                 Text(userdetail.Email.toString()),
      //                                 Text(userdetail.Phone_number.toString()),
      //                                 Text(userdetail.DateOfBirth.toString()),
      //                               ],
      //                             ),
      //                           ),
      //                         ),
      //                       );
      //                     }
      //                 );
      //     }
      //     return Text('no data found');
      //   },
      // ),
      body: FutureBuilder<List<UserDetail>>(
        future: Provider.of<DataBase>(context, listen: false).getUserDetails(),// function from the database that will get all the details of available users already installed in the database
        builder: (context, AsyncSnapshot){// Asyncsnapshot fetches the data being stored in the local database
          final List<UserDetail>?userdetails = AsyncSnapshot.data;//take note of your named variable here

          if (AsyncSnapshot.connectionState != ConnectionState.done){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (AsyncSnapshot.hasError){
            return Center(
              child: Text(AsyncSnapshot.error.toString()),
            );
          }
          if (userdetails != null){
            return ListView.builder(
              itemCount: userdetails.length,
                itemBuilder: (ctx,index){
                  final userdetail = userdetails[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/edit_User', arguments: userdetail.id);//The userdetail here is to get the integer index which will serve as the pointer to the id
                    },
                    child: Card(
                      color: Colors.grey,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Text(userdetail.id.toString()),
                            Text(userdetail.UserName.toString()),
                            Text(userdetail.Email.toString()),
                            Text(userdetail.Phone_number.toString()),
                            Text(userdetail.DateOfBirth.toString()),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            );
          }
          return Text('no data found');
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Add Details'),
        onPressed: (){
          Navigator.pushNamed(context, '/add_User');
        },
      ),
    );
  }
}

