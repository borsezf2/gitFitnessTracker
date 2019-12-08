import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fitness_tracker/main.dart';
import 'package:fitness_tracker/Utils/Methods.dart';
import 'Page 4- All set.dart';
import 'package:fitness_tracker/Utils/Constants.dart';

class P3 extends StatefulWidget{
  @override
  _P3State createState() => _P3State();
}

class _P3State extends State<P3> {

  String _date = "";
  void initState() {
    super.initState();
  }

  String _monthName(int i){
    if(i==1)
      return "January";
    if(i==2)
      return "February";
    if(i==3)
      return "March";
    if(i==4)
      return "April";
    if(i==5)
      return "May";
    if(i==6)
      return "June";
    if(i==7)
      return "July";
    if(i==8)
      return "August";
    if(i==9)
      return "September";
    if(i==11)
      return "November";
    if(i==10)
      return "October";
    if(i==12)
      return "December";

  }

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
                      child: Padding(
                        padding:  EdgeInsets.only(left: deviceWidth*0.025),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: deviceHeight*0.025,),
                            Text("3 of 4",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.lightTextColor),fontSize: deviceWidth*0.04,),),
                            SizedBox(height: deviceHeight*0.035,),
                            Text("YOUR DATE OF BIRTH",style: TextStyle(fontFamily: 'alter_gothic',color: Color(Constants.trueBlue),fontSize: deviceWidth*0.07),),
                            SizedBox(height: deviceHeight*0.15,),

                            Padding(
                              padding: EdgeInsets.only(right:deviceWidth*0.03),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                                    color: Color(0x13000000),
                                  ),
                                  height: deviceHeight*0.1,
                                  width: deviceWidth*0.8,

                                  child: Center(
                                    child: RaisedButton(
                                      color:Color(0x0000000),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0)),
                                      elevation: 0,
                                      onPressed: () {
                                        DatePicker.showDatePicker(context,
                                            theme: DatePickerTheme(
                                              containerHeight: 210.0,
                                            ),
                                            showTitleActions: true,
                                            minTime: DateTime(1900, 1, 1),
                                            maxTime: DateTime(2022, 12, 31),
                                            onChanged: (date){
                                              _date='${date.day} ${_monthName(date.month)} ${date.year}';
                                              setState(() {

                                              });
                                            },
                                            onConfirm: (date) {
                                              print('confirm $date');
                                              _date='${date.day} ${_monthName(date.month)} ${date.year}';
                                              setState(() {});
                                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                                      },
                                      child: Container(

                                        alignment: Alignment.center,
                                        height: deviceHeight*0.06,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[

                                            Expanded(

                                              child:  Center(
                                                child: Text(
                                                  " $_date",
                                                  style: TextStyle(
                                                      color: Color(Constants.buttonColor),
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: deviceWidth*0.064),
                                                ),
                                              ),

                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,color: Color(Constants.buttonColor),
                                              size: deviceWidth*0.09,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),




                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(alignment: Alignment(0,0.85),
                  child: Padding(
                    padding: EdgeInsets.only(right:deviceWidth*0.03),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            SlideRightRoute(page: P4()),
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
                  ),)
                ],
              ),
            )
        ),
      ),
    );
  }
}