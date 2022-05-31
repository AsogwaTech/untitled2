//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled2/modules1/list.dart';
import 'dart:io';
import 'package:untitled2/camera2.dart';

class UserNotifier extends ChangeNotifier{
  List<USerInput> UserList = [];



  addUser(USerInput userinput){
    UserList.add(userinput);
    notifyListeners();
  }
}
// ImagePicker picker = ImagePicker();
// File? _image;
// Future <void> _getImage()async{
//   XFile? image =  await picker.pickImage(source: ImageSource.camera);
// }
// Future <void> _getGalla()async{
//   XFile? image =  await picker.pickImage(source: ImageSource.gallery);
// }
//
// class add with ChangeNotifier{
//  File _image = File(image!.path);
// }
