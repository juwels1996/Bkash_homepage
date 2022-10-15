import 'dart:ui';

import 'package:flutter/material.dart';
class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purpleAccent,
      flexibleSpace: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8,left: 10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/juwels.jpg'),
              ),
              ),
              SizedBox(height: 12,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Juwel Sheikh",
                  style: TextStyle(color: Colors.white,fontSize: 14),

                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 190,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding:EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 30,
                          height: 30,
                          padding: EdgeInsets.all(2),
                          child: CircleAvatar(
                            backgroundColor: Colors.pink,
                            backgroundImage: AssetImage("assets/currency.png"),
                          ),
                        ),
                        ),
                        Text("Tap for Balance",style: TextStyle(fontWeight: FontWeight.bold),

                        )

                      ],
                    ),
                  ),


                ],
              ),
              Container(
                height: 40,
                width: 80,
                child: Image.asset('assets/fly.png'),
              )



            ],
          ),
          )),
    );
  }
}
