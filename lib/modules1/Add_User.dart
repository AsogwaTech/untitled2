import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:untitled2/modules1/database.dart';
import 'package:drift/drift.dart' as drift;
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../photo_upload/db_helper.dart'; // there will be a clash of conflict if this package is not imported as something as column widget is also included in this package.

// class _bytes{
//   String img64 = base64Encode(bytes!);
//
//   static List<int>? get bytes => null;
// }

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  //late DataBase _dataBase;// making an instance of the database

  final _formKey = GlobalKey<FormState>();//form validation.

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  ImagePicker picker = ImagePicker();
  File? _image;

  Future<void>_getImage() async{
    final image = await picker.pickImage(source: ImageSource.camera);
    Directory appPath = await getApplicationDocumentsDirectory();
    final fileName = path.basename(image!.path);
    String pathApp = appPath.path;
    final newImage = await File (image.path).copy('$pathApp/$fileName');
    setState(() {
      _image = newImage;
      Navigator.of(context).pop();
    });
  }

  Future<void>_getGalla() async{
    final image = await picker.pickImage(source: ImageSource.gallery);
    Directory appPath = await getApplicationDocumentsDirectory();
    final fileName = path.basename(image!.path);
    String pathApp = appPath.path;
    final newImage = await File (image.path).copy('$pathApp/$fileName');
    setState(() {
      _image = newImage;
      Navigator.of(context).pop();
    });
  }


 // File? _savedImage;
 //  Future<void> _getImage() async {
 //    Directory appDir = await getApplicationDocumentsDirectory() ;
 //    String path = appDir.path;
 //    final imageFile = await picker.pickImage(source: ImageSource.camera);
 //
 //    if (imageFile == null){
 //      return;
 //    }
 //    setState(() {
 //      _image = File(imageFile.path);
 //     Navigator.of(context).pop();
 //    });
 //    //final appDir = await getApplicationDocumentsDirectory();
 //    //String fileName = path.basename(imageFile.path);
 //    //_image = await File(imageFile.path).copy('${appDir.path}/$fileName');
 //    // _image = appDir.path .toString() as File?;
 //  }
 //
 //  // Future <String>getAppPath()async{
 //  //   File file = File(await _getImage());
 //  // }
 //
 //
 //  Future<void> _getGalla() async {
 //    final imageFile = await picker.pickImage(source: ImageSource.gallery);
 //
 //    if (imageFile == null){
 //      return;
 //    }
 //    setState(() {
 //      _image = File(imageFile.path);
 //      Navigator.of(context).pop();
 //    });
 //    // final appDir = await getApplicationDocumentsDirectory();
 //    // final fileName = imageFile.path;
 //    // final savedImage = await File(imageFile.path).copy('${appDir.path}/$fileName');
 //    //final savedImagee = await imageFile.copy('${appDir.path}/$fileName');
 //  }


  // File? _image ;
  // Future <void> _getImage()async{
  //   XFile? image =  await picker.pickImage(source: ImageSource.camera);//.then((_image) {
  //     //String imgString = Utility.base64String(_image?.readAsBytes());
  //  // }
  //   setState(() {
  //     _image = File(image!.path);
  //     final bytes = File(_image!.uri.toString()).readAsBytesSync();
  //     String img64 = base64Encode(bytes);
  //   });
  //   Navigator.of(context).pop();
  // }
  // Future <void> _getGalla()async{
  //   XFile? image =  await picker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = File(image!.path);
  //     final bytes = File(_image!.uri.toString()).readAsBytesSync();
  //     String img64 = base64Encode(bytes);
  //   });
  //   Navigator.of(context).pop();
  // }


  void camDia (){
    showDialog(context: context, builder: (_){
      return AlertDialog(
        title: const Text('Make your choice'),
        content: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Take a photo'),
                ),
                onTap: _getImage,//()async{
                //   XFile? image =  await picker.pickImage(source: ImageSource.camera);
                //   Navigator.of(context).pop();
                // },
              ),
              InkWell(
                child:Text('Import from gallery') ,
                onTap:_getGalla,
                //()async{
                //   XFile? image =  await picker.pickImage(source: ImageSource.gallery);
                //   Navigator.of(context).pop();
                // },
              ),
            ],
          ),
        ),
      );
    });
  }




  @override
  void initState(){
    super.initState();
    //_dataBase = DataBase();// initialize the database
  }

  @override
  void dispose() {
   // _dataBase.close();// closes the database connections
    _userNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _dateOfBirthController.dispose();
    //_image!.delete();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User Details'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                print(_image!.toString());
                final isValid = _formKey.currentState?.validate();
                if (isValid != null && isValid){
                  final entity = UserDetailsCompanion(
                    UserName: drift.Value(_userNameController.text),
                    Email: drift.Value(_emailController.text),
                    Phone_number: drift.Value(_phoneNumberController.text),
                    DateOfBirth: drift.Value(_dateOfBirthController.text),
                   //customPhoto: drift.Value(_image!.toString()),
                  );

                  Provider.of<DataBase>(context, listen: false).InsertUserDetail(entity).then((value) => ScaffoldMessenger.of(context)
                      .showMaterialBanner(
                    MaterialBanner(
                      backgroundColor: Colors.red,
                      content:Text('Details added successfully: $value', style: TextStyle(color: Colors.white),),
                      actions: [
                        TextButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                            Navigator.pop(context);
                          },
                          child: const Text('close',style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),

                  );
                }
                // final entity = UserDetailsCompanion(
                //   UserName: drift.Value(_userNameController.text),
                //   Email: drift.Value(_emailController.text),
                //   Phone_number: drift.Value(_phoneNumberController.text),
                //   DateOfBirth: drift.Value(_dateOfBirthController.text),
                // );
                //
                // _dataBase.InsertUserDetail(entity).then((value) => ScaffoldMessenger.of(context)
                // .showMaterialBanner(
                //   MaterialBanner(
                //     backgroundColor: Colors.red,
                //       content:Text('Details added successfully: $value', style: TextStyle(color: Colors.white),),
                //       actions: [
                //         TextButton(
                //             onPressed: (){
                //               ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                //               Navigator.pop(context);
                //             },
                //             child: const Text('close',style: TextStyle(color: Colors.white),),
                //         ),
                //       ],
                //   ),
                // ),
                //
                // );// A function that will insert the entities mentioned or entered by the user as stated above// ////o

              },
              icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: camDia,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: _image == null? const Text('Add your image'): Image.file(_image!, height: 100,width: 100,fit: BoxFit.fill,) ,

                ),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,// passing the global key of the formstate at the form position
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _userNameController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
              // TextFormField(
              //   controller: _userNameController,
              //   keyboardType: TextInputType.name,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     label: Text('UserName'),
              //   ),
              //   validator: (String? value){
              //     if (value ==null|| value.isEmpty){
              //       return 'username cannot be empty';
              //     }
              //     return null;
              //   },
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   controller: _emailController,
              //   keyboardType: TextInputType.name,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     label: Text('email'),
              //   ),
              //   validator: (String? value){
              //     if (value ==null|| value.isEmpty){
              //       return 'email cannot be empty';
              //     }
              //     return null;
              //   },
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   controller: _phoneNumberController,
              //   keyboardType: TextInputType.name,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     label: Text('Phone Number'),
              //   ),
              //   validator: (String? value){
              //     if (value ==null|| value.isEmpty){
              //       return 'phone number cannot be empty';
              //     }
              //     return null;
              //   },
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   controller: _dateOfBirthController,
              //   keyboardType: TextInputType.name,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     label: Text('Date of birth'),
              //   ),
              //   validator: (String? value){
              //     if (value == null || value.isEmpty){
              //       return 'Date of birth cannot be empty';
              //     }
              //     return null;
              //   },
              // ),
            ],
          ),
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
}
