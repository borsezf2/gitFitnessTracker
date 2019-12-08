import 'package:flutter/material.dart';
import 'package:fitness_tracker/main.dart';

import 'package:fitness_tracker/Utils/Constants.dart';

class P4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double deviceHeight= MediaQuery.of(context).size.height;
    double deviceWidth= MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment(0,0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: deviceHeight/2,
                    width: deviceWidth,
                    color: Color(Constants.trueBlue),
                  ),
                  SizedBox(height: deviceHeight*0.1,),
                  Text("YAY YOU'RE ALL SET",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.trueBlue),fontSize: deviceWidth*0.07),),
                  SizedBox(height: deviceHeight*0.03,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:deviceWidth*0.15),
                    child: Text("Lorem ipsum dolor sit amet, Vivamus sed tellus dui. Etiam et lobortis mauris, iaculis pellentesque leo. Maecenas sagittis justo quis lectus tincidunt aliquet.",textAlign: TextAlign.center,style: TextStyle(color: Color(Constants.lightTextColor),fontSize: deviceWidth*0.04),),
                  ),
                  SizedBox(height: deviceHeight*0.08,),



                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0.85),
            child:Padding(
              padding: EdgeInsets.symmetric(horizontal:deviceWidth*0.09),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context,true);
                    Navigator.pop(context,true);
                    Navigator.pop(context,true);

                  },
                  child: Container(
                    child: Center(
                      child: Text("GO TO HOME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    height: deviceHeight*0.075,
                    width: deviceWidth,
                    decoration: BoxDecoration(
                      color: Color(Constants.buttonColor),
                      borderRadius: new BorderRadius.all(Radius.circular(30.0),
                      ),
                    ),
                  )),
            )
          )
        ],
      ),
    );

  }
}