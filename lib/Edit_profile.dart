import 'package:flutter/material.dart';

class Edit_profile extends StatelessWidget {
  static const String routeName="Edit_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/logo.png")),
                  Container(
                    margin: EdgeInsets.only(left: 260),
                    child: Text(
                      "Donee",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff68b0f5),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 128),
                      width: 96,
                      height: 96,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Circle.png"),
                      ))
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ahmed",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Change profile picture",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff2e75b0)),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "First name",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Color(0x8086BFF6),
                    filled: true,
                    hintText: "Ahmed",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "last name",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Color(0x8086BFF6),
                    filled: true,
                    hintText: "mohamed",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "phone number",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Color(0x8086BFF6),
                    filled: true,
                    hintText: "01205363977",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Color(0x8086BFF6),
                    filled: true,
                    hintText: "AhmedMohamed12@gmail.com",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
