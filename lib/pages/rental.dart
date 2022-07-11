import 'dart:math';

import 'package:flutter/material.dart';
class Rental extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:

      Column(
        children: <Widget>[
          Expanded(child:
          Container(
              color: Colors.red,
              child:
              Column(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.all(10.0),
                    // margin: EdgeInsets.only(top: 60.0,bottom: 225.0,right: 20.0,left: 30.0),
                    margin: EdgeInsets.only(top: 60.0, right: 30.0, left: 30.0),
                    height: 90.0,
                    decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,




                      children: <Widget>[
                        Expanded(child:
                        InkWell(
                          child: Container(

                              margin: EdgeInsets.only(right: 5.0),
                              height: 90.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Rentals",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              )
                          ),

                          onTap: () {

                          },


                        ),

                        ),


                        Expanded(child:
                        Container(
                            margin: EdgeInsets.only(left: 5.0),
                            height: 90.0,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Subscription",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            )

                        )
                        )
                      ],
                    ),

                  ),


                  SizedBox(height: 10.0),


                  Container(
                    height: 80.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(child: Text("Ridobiko",
                          style: TextStyle(color: Colors.white,
                              fontSize: 50.0),
                        ),),

                        Text("C  U  S  T  O  M  E  R",
                          style: TextStyle(color: Colors.white,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10.0),


                  Container(
                      height: 70.0,
                      margin: EdgeInsets.only(
                          top: 20.0, right: 20.0, left: 20.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        ],
                      )
                  ),

                ],
              )


          ),
          ),


          Expanded(child:
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0))
            ),
          ),),


        ],
      ),


    );
  }


}
