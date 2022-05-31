//import 'dart:html';
//import 'dart:ffi';
// import 'dart:async';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';



// void main(){
//   runApp(MaterialApp(
//     title: 'Camera',
//     home: Camera_Screen(),
//   ));
// }
//
// class Camera_Screen extends StatefulWidget {
//   const Camera_Screen({Key? key}) : super(key: key);
//
//   @override
//   _Camera_ScreenState createState() => _Camera_ScreenState();
// }
//
// class _Camera_ScreenState extends State<Camera_Screen> {
//   //make a global variable that is 'file' that is imported from dart.io
//   //File imageFile;
//  //instantiate an imagepicker object
//  final imagePicker = ImagePicker();
//  //function that will enable the camera
//
//  /*Future openCam() async{
//    final imageFile = await imagePicker.pickImage(source: ImageSource.camera);// this will enable us to have access to the camera.
//    setState(() {
//      // the f
//    });
//  }*/
//  //late File imageFile ;
//   File ? imageFile;
//
//   _openGallery(BuildContext context) async{
//
//     var picture = await imagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       imageFile = picture as File;
//     });
//     Navigator.of(context).pop();
//
//   }
//
//   _openCamera(BuildContext context)async{
//     var picture = await imagePicker.pickImage(source: ImageSource.camera);
//     setState(() {
//       imageFile = picture as File;
//     });
//     Navigator.of(context).pop();
//   }
//
//   //creating a dialog box that will appear if the button is pressed
//
//   Future<void> _showDia(BuildContext context){
//     return showDialog(context: context, builder: (BuildContext context){
//       return AlertDialog(
//         title: Text('Make you choice'),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: [
//               GestureDetector(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   child: Text('import from gallery'),
//                 ),
//                 onTap: (){
//                   _openGallery(context);
//                   Navigator.of(context).pop();
//                 },
//               ),
//               GestureDetector(
//                child: Text('open camera'),
//                onTap: (){
//                  _openCamera(context);
//                  Navigator.of(context).pop();
//                },
//               )
//             ],
//           ),
//         ),
//       );
//     });
//   }
//
//   //  _showMe(){
//   //   if (imageFile == null){
//   //     return Text('no image selected');
//   //   }else{
//   //     Image.file(imageFile, height: 300, width: 300,);
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cameera Screen'),
//         elevation: 0,
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               imageFile == null? Text('no image selected') : Image.file(imageFile!),
//               ElevatedButton(
//                   onPressed: (){
//                     _showDia(context);
//                   },
//                   child: Text('select photo'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
//
//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(myApp());
// }
//
// class myApp extends StatelessWidget {
//   const myApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'file test',
//       home: camera(),
//     );
//   }
// }
//
//
//
// class camera extends StatefulWidget {
//   const camera({Key? key}) : super(key: key);
//
//   @override
//   _cameraState createState() => _cameraState();
// }
//
// class _cameraState extends State<camera> {

  //ImagePicker picker = ImagePicker();

  // Future<void> Selectimage() async{
  //   final XFile? image = await picker.pickImage(source: ImageSource.camera);
  //   File ImageFile = File(image!.path);
  //   Directory test = await getApplicationDocumentsDirectory();
  //   String appTestPath = test.path;
  //   final fileName = ImageFile.path;
  //   final File localImage =
  //   await ImageFile.copy('$appTestPath/$fileName');
  //   setState(() {
  //     pickedImagePath= image.path;
  //   });
  // }


  // File?_storedImage;
  // Future<void> _takePicture() async {
  //   final imageFile = await ImagePicker.pickImage(source: ImageSource.camera,
  //     maxWidth: 600,
  //   );
  //   if (imageFile == null) {
  //     return;
  //   }
  //   setState(() {
  //     _storedImage = imageFile;
  //   });
  //   final appDir = await syspaths.getApplicationDocumentsDirectory();    final fileName = path.basename(imageFile.path);
  //   final savedImage = await imageFile.copy('${appDir.path}/$fileName');    }


//
//   Future<String> getFilePath() async {
//     Directory appDocumentsDirectory = await getApplicationDocumentsDirectory(); // 1
//     String appDocumentsPath = appDocumentsDirectory.path; // 2
//     String filePath = '$appDocumentsPath/demoTextFile.txt'; // 3
//
//     return filePath;
//   }
//
//
//   void saveFile() async {
//     File file = File(await getFilePath()); // 1
//     file.writeAsString("This is my demo text that will be saved to : demoTextFile.txt" ); // 2
//   }
//
//   void readFile() async {
//     File file = File(await getFilePath()); // 1
//     String fileContent = await file.readAsString(); // 2
//
//     print('File Content: $fileContent');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('file test'),
//       ),
//       body: Container(
//         child: Text('I have learnt: ${readFile}'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // After downloading, we'll display the downloaded image
  File? _displayImage;

  final String _url =
      'https://www.kindacode.com/wp-content/uploads/2022/02/orange.jpeg';

  Future<void> _download() async {
    final response = await http.get(Uri.parse(_url));

    // Get the image name
    final imageName = path.basename(_url);
    // Get the document directory path
    final appDir = await path_provider.getApplicationDocumentsDirectory();

    // This is the saved image path
    // You can use it to display the saved image later
    final localPath = path.join(appDir.path, imageName);

    // Downloading
    final imageFile = File(localPath);
    await imageFile.writeAsBytes(response.bodyBytes);

    setState(() {
      _displayImage = imageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: _download, child: const Text('Download Image')),
              const SizedBox(height: 25),
              _displayImage != null ? Image.file(_displayImage!) : Container()
            ],
          ),
        ),
      ),
    );
  }
}