import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: Forgot(),
));
//double x = MediaQuery.of(context).size.width;

class Forgot extends StatefulWidget {
   Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final GlobalKey<FormState> _formKey = GlobalKey<
      FormState>();
  validator(){
    if (_formKey.currentState != null && _formKey.currentState!.validate()){
      print('validate');
    }
    else{
      print('not validated');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _formKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            //color: Colors.black.withOpacity(0.04),
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 250,
                  width:250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('fitness/Reset password-bro.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Text(
                        'Reset your Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          prefixIcon: Icon(Icons.lock_outline,color: Colors.grey,size: 18,),
                          hintText: 'New Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(Icons.visibility_off, color: Colors.grey, size: 18,),
                        ),
                        validator: (String? value){
                          if (value == null || value == ''){
                            return 'field is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: Icon(Icons.lock_outline,color: Colors.grey,size: 18,),
                        hintText: 'Confirm new Password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(Icons.visibility_off, color: Colors.grey, size: 18,),
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple.withOpacity(0.6),
                      ),
                      //color: Colors.blue,
                      width: double.infinity,
                      height: 35,
                      child: TextButton(
                        onPressed: () {
                          validator ();
                        },
                        child: const Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90, top: 25),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.arrow_back_ios)
                            ),
                            const Text(
                              'Back to Login',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
