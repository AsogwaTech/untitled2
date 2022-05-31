import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/modules1/list.dart';
import 'package:untitled2/provider/provider.dart';

class DialogUser extends StatefulWidget {
  // final Function (USerInput) addUser;//function that will be called when the user has finished entering his/her inputs
  // DialogUser(this.addUser);//constructor of the above class.
  //const DialogUser({Key? key, required this.addUser}) : super(key: key);

  @override
  _DialogUserState createState() => _DialogUserState();
}

class _DialogUserState extends State<DialogUser> {
  //DateTime _date = DateTime(2022, 02, 24);
   // DateTime? _date;
   // String label = 'enter your birthdate';
  //
  // String getDate(){
  //   if (date == null){
  //     return 'Enter your BirthDate';
  //   }
  //   else{
  //     return '${date!.day}/ ${date!.month}/ ${date!.year}';
  //   }
  // }
  
//   Future<void> picked (BuildContext context)async{
//     final initialDate = DateTime.now();
//     final dueDate = await showDatePicker(
//       initialDate: initialDate,
//       firstDate: DateTime(DateTime.now().year - 5),
//       lastDate: DateTime(DateTime.now().year - 5),
//       context: context,
//     );
//     if (dueDate == null){
//       return;
//   }
//     else{
//       setState(() {
//         date = dueDate;
//       });
//     }
// }

  @override
  Widget build(BuildContext context) {
    UserNotifier userNotifier = Provider.of<UserNotifier>(context);

    Widget buildTextField(String hint, TextEditingController controller, keyboardType){
      return Container(
        margin: EdgeInsets.all(5),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.black12,
              )
            )
          ),
          controller: controller,
        ),
      );
    }//The custom widget that builds the text form field for the users input and accepting the parameters we needed.
    var Usernamecontroller = TextEditingController();// for holding the values entered by the users.
    var Emailcontroller = TextEditingController();
    var UserPhonecontroller = TextEditingController();
    var UserBirthDatecontroller= TextEditingController();


    return Container(
      padding: EdgeInsets.all(8),
      height: 700,
      width: 400,
      child: Column(
        children: [
           Text(
            'Users contact details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blueAccent,
            ),
          ),
          buildTextField('Username', Usernamecontroller, TextInputType.text),
          buildTextField('Email', Emailcontroller,TextInputType.emailAddress),
          buildTextField('Phone Number', UserPhonecontroller,TextInputType.phone),
          InkWell(
            child: TextField(
              controller:UserBirthDatecontroller ,
              decoration: InputDecoration(
                hintText: 'Enter your birthdate',
                //'${_date.year}/${_date.month}/${_date.day}',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black12,
                      ),
                    ),
              ),
              // onTap: ()async{
              //   DateTime? newDate = await showDatePicker(
              //       context: context,
              //       initialDate: _date,
              //       firstDate: DateTime(2019),
              //       lastDate: DateTime(2050),
              //   );
              //  if (newDate == null) return;
              //
              //    setState(() {
              //      _date = newDate;
              //    });
              //
              // },
              // onTap: ()async{
              //   _date= await showDatePicker(
              //       context: context,
              //       initialDate: DateTime.now(),
              //       firstDate: DateTime(2010),
              //       lastDate: DateTime(2025),
              //   );
              //    setState(() {
              //      label = _date!.toString();
              //    });
             // },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final userinput = USerInput(Usernamecontroller.text, Emailcontroller.text, UserPhonecontroller.text,UserBirthDatecontroller.text);
                userNotifier.addUser(userinput);
                Navigator.of(context).pop();
              },
              child: Text('Add yours'),
          ),
        ],
      ),
    );
  }
}
