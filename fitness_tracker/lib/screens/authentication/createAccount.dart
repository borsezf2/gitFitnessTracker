import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController passController = new TextEditingController();
TextEditingController nameController = new TextEditingController();

class _CreateAccountState extends State<CreateAccount> {
  final nameField = TextFormField(
      autofocus: true,
      controller: nameController,
      decoration: InputDecoration(
        hintText: 'Name',
        focusColor: Colors.grey,
        fillColor: Colors.grey,
      ));

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

  final termsAndCondition = Text(
    'By Signing up you agree \n to all of our Terms & Conditions',
    maxLines: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Create Account',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 2,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 120,
                    ),
                  ),
                  Positioned(
                    child: Text('Tap to add photo'),
                    bottom: 15.0,
                    right: 125.0,

                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: nameField,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: emailIdField,
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: passwordField,
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: termsAndCondition,
            ),
            SizedBox(
              height: 5.0,
            ),
            createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget createAccount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.indigo[900],
              borderRadius: BorderRadius.all(Radius.circular(40.0))),
          child: Center(
            child: Text(
              'Create Account',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
