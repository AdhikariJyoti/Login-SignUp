import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Login App',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        body: LoginFormBody(),
      ),
    );
  }
}

class LoginFormBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormBodyState();
  }
}

class LoginFormBodyState extends State<LoginFormBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter your username';
                }
                return null;
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12.0),

                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Username'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),

            child: TextFormField(

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter password';
                }
                return null;
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12.0),

                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Password'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 260.0, vertical: 50.0),
            child: ElevatedButton(

                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Thanks for the info,we are processing your data'),
                      ),
                    );
                  }
                },
                child: const Text('Login',)),
          ),
        ],
      ),
    );
  }
}
