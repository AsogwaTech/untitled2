import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main(){
  runApp(MaterialApp(
    title: 'Camera',
    home: Camera_Screen1(),
  ));
}

class Camera_Screen1 extends StatefulWidget {
  const Camera_Screen1({Key? key}) : super(key: key);

  @override
  _Camera_Screen1State createState() => _Camera_Screen1State();
}

class _Camera_Screen1State extends State<Camera_Screen1> {
 ImagePicker picker = ImagePicker();

 File? _image ;
 Future <void> _getImage()async{
    XFile? image =  await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
    Navigator.of(context).pop();
  }
 Future <void> _getGalla()async{
   XFile? image =  await picker.pickImage(source: ImageSource.gallery);
   setState(() {
     _image = File(image!.path);
   });
   Navigator.of(context).pop();
 }


 void camDia (){
   showDialog(context: context, builder: (_){
     return AlertDialog(
       title: Text('Make your choice'),
       content: Container(
         height: MediaQuery.of(context).size.height * 0.3,
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             InkWell(
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 20),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera correction'),
      ),
      // body: Center(
      //     child: _image == null? Text('no image selected'): Image.file(_image!, height: 150,width: 150,fit: BoxFit.fill,),
      //
      // ),
      body: Center(
        child:ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child:_image == null? Text('no image selected'): Image.file(_image!, height: 100,width: 100,fit: BoxFit.fill,) ,
        )
        ),
        // child: CircleAvatar(
        //   radius: 40,
        //   child: _image == null? Text('no image selected'): Image.file(_image!, height: 150,width: 150,fit: BoxFit.fill,),
        // ),
      floatingActionButton: FloatingActionButton(
        onPressed:camDia,
        child: Icon(Icons.camera_alt),
      )
    );
  }
}
