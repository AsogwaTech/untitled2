/*import 'package:flutter/material.dart';
void main () => runApp(MaterialApp(
home: myApp (),
));


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form field'),
      ),
      body: formSet(),
    );
  }
}
class formSet extends StatefulWidget {
  const formSet({Key? key}) : super(key: key);

  @override
  _State<formSet>createState() => _formSetState();
}

class _formSetState extends State<formSet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:Column(
          children: [

          ],
        ),
    );
  }
}*/
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home: Scaffold(//backgroundColor: Colors.grey[900],
        appBar: AppBar(centerTitle: true,
          elevation: 0,
          //backgroundColor: Colors.purple[400],
          title: const Text('YOUR FITNESS OUR PRIORITY'),
        ), //const Text(_title)),
        body:
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: MyStatefulWidget(),
            ), //function that will be responsible for holding the form.
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
      child:Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: Icon(Icons.mail_sharp),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter some text joor';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: TextFormField(
              decoration:  const InputDecoration(
                /*enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),*/
                //border: InputBorder.none,
                hintText: 'Enter you password',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
                suffixIcon: Icon(Icons.vpn_key_outlined),
                iconColor: Colors.blue,
              ),
              validator: (value) {
                if (value == 'String'){
                  return 'invalid text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: TextFormField(
              decoration: const InputDecoration(
               hintText: 'Confirm your password',
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('i am a learner'),),
                  );
                }
              },
              child: const Text('SIGN UP'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                  'Already a User?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('SIGN IN'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
