import 'package:fitness_tracker/screens/authentication/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

final List<String> titleText = [
  'TRACK EVERY STEP',
  'COMPETE WITH FRIENDS',
  'STAY FIT, EARN REWARDS',
];

final List<String> descriptionText = [
  'Because every mile matters to you, we deliver every detail like pace, distance, routes and personal records on your fingertips',
  'Because every mile matters to you, we deliver every detail like pace, distance, routes and personal records on your fingertips',
  'Because every mile matters to you, we deliver every detail like pace, distance, routes and personal records on your fingertips',
];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

CarouselSlider carouselSlider;

class GettingStarted extends StatefulWidget {
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _currentPage = 0;
  int index = 0;
  String title = titleText[0];
  String description = descriptionText[0].toString();
  String button = "NEXT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = carouselSliderBuilder(context),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index ? Colors.blue : Colors.grey,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('$title',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto')),
              SizedBox(
                height: 20.0,
              ),
              Text('$description',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[700],
                      fontFamily: 'Roboto')),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    if (index == 2) {
                      setState(() {
                        button = "LOGIN / SIGNUP";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      });
                    } else {
                      setState(() {
                        button = "NEXT";
                      });
                    }
                    carouselSlider.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Center(
                      child: Text(
                        '$button',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                child: Container(
                  child: Center(
                    child: Text(
                      'Skip to Login/Signup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              )
            ],
          ),
        ));
  }

  void nextslide() {
    if (index == 2) {
      setState(() {
        button = "LOGIN / SIGNUP";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    } else {
      setState(() {
        button = "NEXT";
      });
    }
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  Widget carouselSliderBuilder(BuildContext context) {
    return CarouselSlider(
      height: 300.0,
      initialPage: _currentPage,
      enlargeCenterPage: true,
      enableInfiniteScroll: false,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
          this.index = index;
          print(index);
        });
      },
      items: imgList.map((imgUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(imgUrl))),
                ));
          },
        );
      }).toList(),
    );
  }
}
