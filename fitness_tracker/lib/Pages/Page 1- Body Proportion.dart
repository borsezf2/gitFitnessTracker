import 'package:flutter/material.dart';
import 'Page 2- Location.dart';
import 'package:fitness_tracker/main.dart';
import 'package:fitness_tracker/Utils/Methods.dart';
import 'package:fitness_tracker/Utils/Constants.dart';
class P1 extends StatefulWidget{
  @override
  _P1State createState() => _P1State();
}

class _P1State extends State<P1> {
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
                    // Navigator.pop(context,true);
                  },
                  child: Icon(Icons.arrow_back,color: Color(Constants.darkColor),size: deviceWidth*0.09,)),
              centerTitle: true,
              title: Text("Enter Details", style: TextStyle(color: Color(Constants.darkColor)),),
            ) ,
            body: Container(
              height: deviceHeight,
              width: deviceWidth,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Align(
                      alignment: Alignment(0,0),
                      child: Container(
                        height: deviceHeight,
                        width: deviceWidth,
                        child: Padding(
                          padding:  EdgeInsets.only(left: deviceWidth*0.025),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: deviceHeight*0.025,),
                              Text("1 of 4",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.lightTextColor),fontSize: deviceWidth*0.04,),),
                              SizedBox(height: deviceHeight*0.035,),
                              Text("ENTER YOUR BODY PROPORTIONS",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.trueBlue),fontSize: deviceWidth*0.06),),
                              SizedBox(height: deviceHeight*0.15,),
                              Text("Height",style: TextStyle(fontWeight: FontWeight.bold,color: Color(Constants.trueBlue),fontSize: deviceWidth*0.05),),
                              SizedBox(height: deviceHeight*0.01,),
                              DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                hint: Container(width: deviceWidth*0.8,child: Text("Enter Your Height")),
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
                              SizedBox(height: deviceHeight*0.08,),
                              Text("Width",style: TextStyle(fontWeight: FontWeight.bold,color: Color(Constants.trueBlue),fontSize: deviceWidth*0.05),),
                              SizedBox(height: deviceHeight*0.01,),
                              DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                hint: Container(width: deviceWidth*0.8,child: Text("Enter Your Width")),
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
                    child:  Padding(
                      padding: EdgeInsets.only(right:deviceWidth*0.03),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              SlideRightRoute(page: P2()),
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

