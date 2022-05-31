/*class Nike {
  String text;
  String author;

  Nike({required this.text,required this.author});

}*/
import 'package:flutter/material.dart';
class quote extends StatelessWidget {
  final String text;
  const quote({
  required this.text
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        height: 70,
        width: 70,
        child: TextButton(
          onPressed: (){ },
          child: const Text(
            'text',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ) ,
    );
  }
}

