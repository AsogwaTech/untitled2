

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: SignUp(),
));

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 30,
        backgroundColor: Colors.transparent,
        title: const Text(
          'YOUR FITNESS, OUR PRIORITY',
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 3.0,
                color: Colors.white,
              ),
              Shadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                color: Colors.purple,
              ),
            ],
            color: Colors.purple,
          ),
        ),
      ), //const Text(_title)),
      body:const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() =>
      _MyStatefulWidgetState(); //return a mutable state of the private form of mystatefulwidget.
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<
      FormState>();// a form state is used to reset, save and validate every form field in that descendant
    validator(){
      if (_formKey.currentState != null && _formKey.currentState!.validate()){
        print('Form validated and successfully submitted to database');
      }
      else {
        print('Form not Validated');
      }
    }

    bool isHiddenPassword = true;

    void _togglePassword(){
      setState(() {
        isHiddenPassword = !isHiddenPassword;
      });
    }

    TextEditingController _password = TextEditingController();
    TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //padding: EdgeInsets.only(left: 100),
            margin: const EdgeInsets.only(left: 38),
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Fitness stats-amico.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Text(
            'SignUp',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              prefixIcon: Icon(Icons.assignment_ind_outlined,color: Colors.grey,size: 18,),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            validator: (String? value) {
              if (value ==null || value ==''){
                return 'Field is required';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                //border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    //width: 5,
                  ),
                ),
                prefixIcon: Icon(Icons.alternate_email_sharp, color: Colors.grey, size: 18,),
                hintText: 'Email ID',
                hintStyle: TextStyle(
                  //decoration: TextDecoration.underline,
                  color: Colors.grey,
                ),

              ),
              validator: (String? value) {
                if (value ==null || value ==''){
                  return 'Field is required';
                }
                if (!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(value)){
                  return 'Please enter a valid email id';
                }
                return null;
              },
            ),
          ),
          TextFormField(
            obscureText: isHiddenPassword,
            controller: _password,
            keyboardType: TextInputType.text,
            decoration:   InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.grey, size: 18,),
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: InkWell(
                onTap: _togglePassword,
                  child: isHiddenPassword ? const Icon(Icons.visibility_off, color: Colors.grey, size: 18,) : const Icon(Icons.visibility, color: Colors.grey, size: 18,),
              ),
            ),
            validator: (String? value) {
              if (value ==null || value ==''){
                return 'Field is required';
              }
              if (value.length <= 6){
                return 'Password should be greater than 6 character';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _confirmpassword,
            obscureText: isHiddenPassword,
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.grey, size: 18,),
              hintText: 'Confirm Password',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: InkWell(
                onTap: _togglePassword,
                child: isHiddenPassword ? const Icon(Icons.visibility_off, color: Colors.grey, size: 18,) : const Icon(Icons.visibility, color: Colors.grey, size: 18,),
              ),
            ),
            validator: (String? value) {
              if (value ==null || value ==''){
                return 'Field is required';
              }
              if (value.length <= 6){
                return 'Password should be greater than 6 character';
              }
              if (_password.text != _confirmpassword.text){
                return 'password do not match';
              }
              return null;
            },
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
                validator ();//method call of validator
                //Modular.to.navigate('/Second');
              },
              child: const Text(
                'SignUp',
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
            margin: const EdgeInsets.fromLTRB(100, 20, 0, 0),
            child: Row(
              children: [
                const Text(
                  'Already a User?',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () { Modular.to.pushNamed('/Second'); },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

