import 'package:flutter/material.dart';
import 'package:fitness_tracker/Utils/Constants.dart';


class P6 extends StatefulWidget{
  @override
  _P6State createState() => _P6State();
}

class _P6State extends State<P6> {
  String dropdownValueHeight;
  String dropdownValueWidth;
  String _name="PRADEEP";
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
            
            body: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[

                  Align(
                    alignment: Alignment(0,-0.8),
                    child: Container(
                      height: deviceHeight/5.5,
                      width: deviceHeight/5.5,
                      decoration: BoxDecoration(color: Colors.black,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-0.3),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:deviceWidth/12),
                      child: Text(
                        "HEY $_name, YOUR ACCOUNT HAS BEEN CREATED SUCCESSFULLY",textAlign: TextAlign.center,style: TextStyle(
                        fontFamily: 'alter_gothic',fontSize: 29,color: Color(Constants.trueBlue)
                      ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,-0.08),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal:deviceWidth/7),
                      child: Text(
                        "Join over 10,000 fitness freaks and make a difference in your life",textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15,color: Color(Constants.lightTextColor)
                      ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,0.07),
                    child: Container(
                      height: deviceWidth/13+6,
                      width: deviceWidth/13*4+24,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Circular(deviceWidth/13+6,0xffffffff,0xff000000,-1,0),
                          Circular(deviceWidth/13+6,0xffffffff,0xff000000,-0.5,0),
                          Circular(deviceWidth/13+6,0xffffffff,0xff000000,0,0),
                          Circular(deviceWidth/13+6,0xffffffff,0xff000000,0.5,0),
                          Circular(deviceWidth/13+6,0xffffffff,0xff000000,1,0),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,0.18),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:deviceWidth/10),
                      child: Container(height: 1,color: Color(0x11000000),),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,0.53),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth/5.5),
                      child: Text(
                        "Before we proceed, we'd want you to answer a few questions so that we can provide you with accurate information and help you set better goals", textAlign: TextAlign.center,style: TextStyle(color: Color(Constants.buttonColor),fontSize: 17),
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
                              child: Text("GO AHEAD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
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


class Circular extends StatelessWidget{
  double size;int color;int secondary_color;double x_al;double y_al;
  Circular(double a,int b,int c,double x,double y)
  {
    size=a;color=b;secondary_color=c;x_al=x;y_al=y;
  }
  @override
  Widget build(BuildContext context,) {
    // TODO: implement build
    return Align(alignment: Alignment(x_al,y_al),
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(color)
        ),
        child: Center(
          child: Container(
            height: size-6,
            width: size-6,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(secondary_color)
            ),
          ),
        ),
      ),
    );
  }
}