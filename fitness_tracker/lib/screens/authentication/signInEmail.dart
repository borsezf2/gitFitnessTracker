import 'package:flutter/material.dart';

class SignInEmail extends StatefulWidget {
  @override
  _SignInEmailState createState() => _SignInEmailState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController passController = new TextEditingController();

class _SignInEmailState extends State<SignInEmail> {
  final logo = Hero(
    tag: 'logo',
    child: Image(
      width: 100,
      height: 100,
      image: NetworkImage(
          'https://gstatic.com/images/branding/product/1x/gfit_512dp.png'),
    ),
  );

  final emailIdField = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    controller: emailController,
    decoration: InputDecoration(
      hintText: 'Email Id',
      focusColor: Colors.black,
      fillColor: Colors.grey,
    ),
  );

  final passwordField = TextFormField(
    autofocus: false,
    obscureText: true,
    controller: passController,
    decoration: InputDecoration(
      hintText: 'Password',
    ),
  );

  final forgotLabel = FlatButton(
    child: Text('Forgot Password',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline)),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('SignIn with Email',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          logo,
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: emailIdField,
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: passwordField,
          ),
          loginButton(context),
          forgotLabel
        ],
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 300.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.indigo[900],
              borderRadius: BorderRadius.all(Radius.circular(40.0))),
          child: Center(
            child: Text(
              'LOGIN',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
