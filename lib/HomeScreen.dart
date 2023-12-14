import 'package:egypt_tour_mate/Edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  static final title = 'salomon_bottom_bar';
  static const String routeName = "HomeScreen";

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(elevation: 0.0, width: 27),
        appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            backgroundColor: Color(0xff89C9FF),
            toolbarHeight: 97,
            centerTitle: true,
            title: Text("Egypt Tour Mate",
                style: TextStyle(
                    color: Color(0xff1B1E28),
                    fontStyle: FontStyle.normal,
                    fontSize: 24)),
            actions: [
              Image(image: AssetImage("assets/images/logo.png")),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.notifications,
                  size: 25,
                ),
              )
            ]),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home", style: TextStyle(color: Colors.black)),
              selectedColor: Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.car_rental_outlined),
              title: Text("Car", style: TextStyle(color: Colors.black)),
              selectedColor: Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search", style: TextStyle(color: Colors.black)),
              selectedColor: Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Edit_profile.routeName);
                  },
                  child: Icon(Icons.person)),
              title: Text("Profile", style: TextStyle(color: Colors.black)),
              selectedColor: Color(0xff89C9FF),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                //color: Colors.amber,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Find your favourite Trip",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Container(
                    width: 384,
                    height: 180,
                    alignment: Alignment(16, 577),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("assets/images/pyramids.png"))),
                  ),
                  Container(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Cultural",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.deepOrange,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 184.22,
                              height: 193,
                              alignment: Alignment(14, 368),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/Leisure.png")))),
                          Container(
                              width: 184.22,
                              height: 193,
                              alignment: Alignment(216, 368),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/Religion.png")))),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Leisure",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Religion",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 384,
                    height: 180,
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("assets/images/Medical.png"))),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Medical",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}
