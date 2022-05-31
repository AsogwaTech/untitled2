import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

class Utility {

  static Image imageFromBase64String(String base64String) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.fill,
    );
  }

  static Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  static String base64String(Uint8List data) {
    return base64Encode(data);
  }
}



class Photo {
  int id;
  //String photo_name;

  Photo(this.id);//this.photo_name

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      //'photo_name': photo_name,
    };
    return map;
  }

  Photo?fromMap(Map<String, dynamic> map) {
    id = map['id'];
   // photo_name = map['photo_name'];
  }
}
