import 'package:flutter/material.dart';
import 'package:fitness_tracker/Utils/Constants.dart';


class P5 extends StatefulWidget{
  @override
  _P5State createState() => _P5State();
}

class _P5State extends State<P5> {
  String dropdownValueHeight;
  String dropdownValueWidth;
  Widget build(BuildContext context) {
    double deviceHeight= MediaQuery.of(context).size.height;
    double deviceWidth= MediaQuery.of(context).size.width;


    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(Constants.white),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: deviceHeight*0.01,horizontal: deviceWidth*0.04),
        child: Scaffold(
            backgroundColor: Color(Constants.white),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(Constants.white),
              leading: GestureDetector(
                  onTap: (){
                    Navigator.pop(context,true);
                  },
                  child: Icon(Icons.arrow_back,color: Color(Constants.darkColor),size: deviceWidth*0.09,)),
              centerTitle: true,
              title: Text("Forgot Password", style: TextStyle(color: Color(Constants.darkColor)),),
            ) ,
            body: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Align(
                    alignment: Alignment(0,-0.8),
                    child: Container(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: deviceWidth*0.025),
                        child: TextField(
                          decoration: InputDecoration(
                              focusColor: Color(Constants.buttonColor),
                              hintText: 'Enter new Password here',


                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,0.85),
                    child: Padding(
                      padding: EdgeInsets.only(right:deviceWidth*0.03),
                      child: GestureDetector(

                          child: Container(
                            child: Center(
                              child: Text("NEXT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            height: deviceHeight*0.075,
                            width: deviceWidth,
                            decoration: BoxDecoration(
                              color: Color(Constants.buttonColor),
                              borderRadius: new BorderRadius.all(Radius.circular(30.0),
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}


