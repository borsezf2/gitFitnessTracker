import 'package:flutter/material.dart';
import 'package:fitness_tracker/main.dart';
import 'Page 3- Date of birth.dart';
import 'package:fitness_tracker/Utils/Methods.dart';
import 'package:fitness_tracker/Utils/Constants.dart';

class P2 extends StatefulWidget{
  @override
  _P2State createState() => _P2State();
}

class _P2State extends State<P2> {
  String dropdownValueHeight;
  String dropdownValueWidth;
  Widget build(BuildContext context) {
    double deviceHeight= MediaQuery.of(context).size.height;
    double deviceWidth= MediaQuery.of(context).size.width;
    List<String> heightList=['184', '185', '186', '187'];
    List<String> widthList=['184', '185', '186', '187'];

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
              title: Text("Enter Details", style: TextStyle(color: Color(Constants.darkColor)),),
            ) ,
            body: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Align(
                    alignment: Alignment(0,0),
                    child: Container(
                      child: Padding(
                        padding:  EdgeInsets.only(left: deviceWidth*0.025),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: deviceHeight*0.025,),
                            Text("2 of 4",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.lightTextColor),fontSize: deviceWidth*0.04,),),
                            SizedBox(height: deviceHeight*0.035,),
                            Text("WHERE ARE YOU LOCATED",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.trueBlue),fontSize: deviceWidth*0.06),),
                            SizedBox(height: deviceHeight*0.15,),

                            DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down),
                              hint: Container(width: deviceWidth*0.8,child: Text("State")),
                              value: dropdownValueHeight,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValueHeight = newValue;
                                });
                              },
                              items: heightList
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: <Widget>[
                                      Text(value),
                                      SizedBox(width: 3,),
                                      Text("cm")
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),

                            SizedBox(height: deviceHeight*0.03,),
                            DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down),
                              hint: Container(width: deviceWidth*0.8,child: Text("City")),
                              value: dropdownValueWidth,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValueWidth = newValue;
                                });
                              },
                              items: widthList
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: <Widget>[
                                      Text(value),
                                      SizedBox(width: 3,),
                                      Text("cm")
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0,0.85),
                    child: Padding(
                      padding: EdgeInsets.only(right:deviceWidth*0.03),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              SlideRightRoute(page: P3()),
                            );
                          },
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


