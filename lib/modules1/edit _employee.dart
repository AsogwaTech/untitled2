import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/modules1/database.dart';
import 'package:drift/drift.dart' as drift; // there will be a clash of conflict if this package is not imported as something as column widget is also included in this package.

class EditUser extends StatefulWidget {
  final int id;// the id of the user to be changed
  const EditUser({required this.id, Key? key}) : super(key: key);// add this id to the routes that leads to this particular screen

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {

  //late DataBase _dataBase;// making an instance of the database
  late UserDetail _userDetail;
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  @override
  void initState(){
    super.initState();
    //_dataBase = DataBase();// initialize the database
    //final userdetail = _dataBase.getUserDetail(widget.id);
    //_userDetail = _dataBase.getUserDetails(widget.id);
    getUser();// the function that will make sure that the initial data being entered by the user is still intact when the edit screen opened for easy editing
  }

  @override
  void dispose() {
    //_dataBase.close();// closes the database connections
    _userNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User Details'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              final entity = UserDetailsCompanion(
                id:drift.Value (widget.id),// the id of the user
                UserName: drift.Value(_userNameController.text),
                Email: drift.Value(_emailController.text),
                Phone_number: drift.Value(_phoneNumberController.text),
                DateOfBirth: drift.Value(_dateOfBirthController.text),
              );

              Provider.of<DataBase>(context, listen:false).updateUserDetail(entity).then((value) => ScaffoldMessenger.of(context)//watch out for the function/query being called
                  .showMaterialBanner(
                MaterialBanner(
                  backgroundColor: Colors.red,
                  content:Text('Details edited successfully: $value', style: TextStyle(color: Colors.white),),
                  actions: [
                    TextButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      },
                      child: const Text('close',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),

              );// A function that will insert the entities mentioned or entered by the user as stated above

            },
            icon: const Icon(Icons.save),
          ),
          IconButton(
              onPressed: () {
                deleteUser();
                Navigator.pop(context);
                //Navigator.pop(context);
              },
              icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _userNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('UserName'),
              ),
              validator: (String? value){
                if (value ==null|| value.isEmpty){
                  return 'username cannot be empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('email'),
              ),
              validator: (String? value){
                if (value ==null|| value.isEmpty){
                  return 'email cannot be empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Phone Number'),
              ),
              validator: (String? value){
                if (value ==null|| value.isEmpty){
                  return 'phone number cannot be empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _dateOfBirthController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Date of birth'),
              ),
              validator: (String? value){
                if (value == null || value.isEmpty){
                  return 'Date of birth cannot be empty';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
// void addDetails (){
//   final entity = UserDetailsCompanion(
//     UserName: drift.Value(_userNameController.text),
//     Email: drift.Value(_emailController.text),
//     Phone_number: drift.Value(_phoneNumberController.text),
//     DateOfBirth: drift.Value(_dateOfBirthController.text),
//   );
//
//   _dataBase.InsertUserDetail(entity).then((value) => ScaffoldMessenger.of(context)
//       .showMaterialBanner(
//     MaterialBanner(
//       backgroundColor: Colors.red,
//       content:Text('Details added successfully: $value', style: TextStyle(color: Colors.white),),
//       actions: [
//         TextButton(
//           onPressed: (){
//             ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
//           },
//           child: const Text('close',style: TextStyle(color: Colors.white),),
//         ),
//       ],
//     ),
//   ),
//
//   );
// }

  void deleteUser(){
    Provider.of<DataBase>(context, listen:false).deleteUserDetail(widget.id).then((value) => ScaffoldMessenger.of(context)//watch out for the function/query being called
        .showMaterialBanner(
      MaterialBanner(
      backgroundColor: Colors.red,
      content:Text('Details deleted successfully: $value', style: TextStyle(color: Colors.white),),
      actions: [
        TextButton(
          onPressed: (){
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            Navigator.pop(context);
          },
          child: const Text('close',style: TextStyle(color: Colors.white),),
        ),
      ],
    )));
  }



Future<void> getUser()async{
  _userDetail = await Provider.of<DataBase>(context, listen:false).getUserDetail(widget.id);
  _userNameController.text = _userDetail.UserName!;
  _emailController.text = _userDetail.Email!;
  _phoneNumberController.text = _userDetail.Phone_number!;
  _dateOfBirthController.text = _userDetail.DateOfBirth!;
}
}
