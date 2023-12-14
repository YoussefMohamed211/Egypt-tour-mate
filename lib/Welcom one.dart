import 'package:egypt_tour_mate/Welcome%20two.dart';
import 'package:flutter/material.dart';

class Welcome1Splash extends StatelessWidget {

  static const String routeName="w1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/logo.png")),
            Container(
              margin: EdgeInsets.only(left: 40, bottom: 35),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/Welcome1.png")),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(
                "popular destinations for beach and diving lovers.",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(
                "Egypt's wonderful coasts on the Red Sea and the Mediterranean attractbeach and water sports lovers. Cities like Sharm El Sheikh and Hurghada ",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200,top: 100),
                decoration:
                    BoxDecoration( color: Color(0xff68b0f5),
                        borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Welcome2Splash.routeName);

                    },
                    child: Text(
                      "Let's Go start",
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
  }
}
