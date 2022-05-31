import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


void main() => runApp(myApp());
final _formKey = GlobalKey<FormState>();


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness form ',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BYTEWORKS FITNESS APP'),
        ),
        body: FormBuilder(
            key: _formKey,
            child: Column(
                children: [
                FormBuilderTextField(
                name: 'text_field'
            ),
            ElevatedButton(
            onPressed: () {},
        child: Text('LOG IN'),
      ),
      ],
    ),
          onChanged : (){
          print('you have made a change on this field');
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: {
              'text_field' : 'Username/Email'
        },

        )
    ,
    )
    ,
    );
  }
}







