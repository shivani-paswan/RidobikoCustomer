import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ridobiko/Tile.dart';
class Rental extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return myHome();
  }



}

class  myHome extends State{
  Color rentalBackgroundColor=Colors.white;
  Color subsBackgroundColor=Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(192, 192, 192, 1),

      body:
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: Color.fromRGBO(192, 192, 192, 1),
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
                            child: GestureDetector(
                              onTap: (){
                                setState((){
                                  rentalBackgroundColor=Colors.white;
                                  subsBackgroundColor=Colors.redAccent;
                                });
                              },
                              child: Container(

                                  margin: EdgeInsets.only(right: 5.0),
                                  height: 90.0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Rentals",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text("For hours & days",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: rentalBackgroundColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                  )
                              ),
                            ),

                            onTap: () {

                            },


                          ),

                          ),


                          Expanded(child:
                          GestureDetector(
                            onTap: (){
                              setState((){
                                subsBackgroundColor=Colors.white;
                                rentalBackgroundColor=Colors.redAccent;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.only(left: 5.0),
                                height: 90.0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Subscription",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      Text("For months & years",
                                        style: TextStyle(
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: subsBackgroundColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15.0),
                                  ),
                                )

                            ),
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
                         Image.asset("assets/images/logo.png",height:60,),

                          Text("C  U  S  T  O  M  E  R",
                            style: TextStyle(color: Colors.black,
                                fontSize: 15.0),
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
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.location_on,color: Colors.white, size: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Select city to search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                      ),
                      Icon(Icons.arrow_right_alt_sharp,color: Colors.white, size: 40,),

                  ],
                ),
                    ),

                  ],
                )


            ),


            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 10,top: 10),
              decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0))
              ),
               child:
               Container(
                 color: Colors.transparent,
                 padding:EdgeInsets.all(10),
               child:
             Column(

             children: <Widget>[
               Align(alignment: Alignment.centerLeft,child: Text('Featured',
                 style: TextStyle(
                   color: Colors.grey[800],
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                 ),
               ),
               ),

               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child:
                 Row(
                   children:
               <Widget> [

                 ActivityListTile(
                   title: 'running',
                   nextLine: 'BUild strong my bones\n let do funable running',
                   subtitle: '337/- only',
                   bikeImage: Icon(Icons.landscape),
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Color.fromRGBO(108, 115, 255, 1),
                   gradient: Color.fromRGBO(58, 63, 255, 1),
                   onTab: (){

                   },

                 ),

                 ActivityListTile(
                   title: 'running',
                   bikeImage: Icon(Icons.landscape),
                   nextLine: 'BUild strong my bones',
                   subtitle: '337/- only',
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Color.fromRGBO(108, 115, 255, 1),
                   gradient: Color.fromRGBO(58, 63, 255, 1),
                   onTab: (){

                   },
                 ),
                 ActivityListTile(
                   title: 'running',
                   bikeImage: Icon(Icons.landscape),
                   nextLine: 'BUild strong my bones',
                   subtitle: '337/- only',
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Color.fromRGBO(108, 115, 255, 1),
                   gradient: Color.fromRGBO(58, 63, 255, 1),
                   onTab: (){

                   },
                 ),
                 ActivityListTile(
                   title: 'running',
                   nextLine: 'BUild strong my bones',
                   subtitle: '337/- only',
                   bikeImage: Icon(Icons.landscape),
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Color.fromRGBO(108, 115, 255, 1),
                   gradient: Color.fromRGBO(58, 63, 255, 1),
                   onTab: (){

                   },
                 ),

                   ],
                 ),
               ),
    /// add widgets from here


             ],

             )

               ),
            )


          ],
        ),
      ),
    );
  }

}
