import 'package:fitness_tracker/screens/authentication/signInEmail.dart';
import 'package:flutter/material.dart';

import 'createAccount.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final logo = Hero(
    tag: 'logo',
    child: Image(
      width: 100,
      height: 100,
      image: NetworkImage(
          'https://gstatic.com/images/branding/product/1x/gfit_512dp.png'),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login/Signup',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: logo),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
              onPressed: () {},
              child: loginCard(
                  context,
                  'Sign in with Facebook',
                  Image(
                    width: 30.0,
                    height: 30.0,
                    image: NetworkImage(
                        'http://pluspng.com/img-png/facebook-announces-clickable-hashtags-resolution-media-image-18-530.png'),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
              onPressed: () {},
              child: loginCard(
                  context,
                  'Sign in with Google',
                  Image(
                      width: 30.0,
                      height: 30.0,
                      image: NetworkImage(
                          'http://pluspng.com/img-png/google-logo-png-open-2000.png'))),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInEmail()));
              },
              child:
                  loginCard(context, 'Sign in with email', Icon(Icons.email)),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: loginCard(
                  context, 'Create Account', Icon(Icons.camera_front)),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginCard(BuildContext context, String title, Widget icon) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListTile(
        leading: icon,
        title: Text(
          '$title',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
