import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: SignIn(),
));

class SignIn extends StatefulWidget {
  const SignIn ({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      FormState>(); // a form state is used to reset, save and validate every form field in that descendant

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
            'Login',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: TextFormField(
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
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.grey, size: 18,),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: Icon(Icons.visibility_off_rounded, color: Colors.grey, size: 18,),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(200, 5, 0, 5),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forget password?',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.withOpacity(0.6),
            ),
            //color: Colors.blue,
            width: double.infinity,
            height: 35,
            child: TextButton(
              onPressed: () {
                // print('you pressed me');
              },
              child: const Text(
                'Login',
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
            margin: const EdgeInsets.fromLTRB(154, 15, 0, 15),
            child: const Text(
              'OR',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.withOpacity(0.6),
            ),
            //color: Colors.blue,
            width: double.infinity,
            height: 35,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundImage: AssetImage('assets/goole.png'),
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(100, 5, 0, 0),
            child: Row(
              children: [
                const Text(
                  'New User?',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () { },
                  child: const Text(
                    'Find Available Device',
                    style: TextStyle(
                      color: Colors.purple,
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
