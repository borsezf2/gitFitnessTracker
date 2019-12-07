import 'package:fitness_tracker/Pages/Page%205-%20Forgot%20Password.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:fitness_tracker/scopedModel/mainModel.dart';
import 'Pages/Page 1- Body Proportion.dart';
import 'Pages/Page 6- Account Created.dart';
import 'package:fitness_tracker/Utils/Methods.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<mainModel>(
      model: mainModel(),
      child: MaterialApp(
        title: 'Fitness Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("fitness tracker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey developers',
            ),
            RaisedButton(
              child: Text("UI Registeratiion"),
              onPressed: (){
                Navigator.push(context, SlideRightRoute(page: P1()),);
              },
            ),
            RaisedButton(
              child: Text("Forgot Password"),
              onPressed: (){
                Navigator.push(context, SlideRightRoute(page: P5()),);
              },
            ),
            RaisedButton(
              child: Text("Account Created Page"),
              onPressed: (){
                Navigator.push(context, SlideRightRoute(page: P6()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
