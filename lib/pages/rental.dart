
import 'package:flutter/material.dart';
import 'package:ridobiko/pages/search.dart';
import 'package:ridobiko/rentalLayout/HappyCustomer.dart';
import 'package:ridobiko/rentalLayout/Spinner.dart';
import 'package:ridobiko/rentalLayout/Tile.dart';
import 'package:ridobiko/rentalLayout/WhyRidobiko.dart';
import 'package:ridobiko/SeachScreens/SearchScreen.dart';
class Rental extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return myHome();
  }

}

class  myHome extends State{
  Color rentalBackgroundColor=Colors.white;
  Color subsBackgroundColor=Color.fromRGBO(0, 0, 0,0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: BoxDecoration(gradient: LinearGradient(begin:Alignment.topLeft,end: Alignment.bottomRight,colors: [Colors.red[900]!,Colors.red[300]!] )),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  // margin: EdgeInsets.only(bottom: 30),
                      height: 400,
                  child:
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        child: Container(
                          margin: EdgeInsets.only(top: 60.0, right: 30.0, left: 30.0),
                          height: 100,
                          decoration:  BoxDecoration(
                              color: Color.fromRGBO(246,244,241,1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0))
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                child: GestureDetector(
                                  onTap: (){
                                    setState((){
                                      rentalBackgroundColor=Colors.white;
                                      subsBackgroundColor=Color.fromRGBO(0, 0, 0,0);

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
                                                  // color: Colors.black,
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



                              ),


                              GestureDetector(
                                onTap: (){
                                  setState((){
                                    subsBackgroundColor=Colors.white;
                                    rentalBackgroundColor=Color.fromRGBO(0, 0, 0,0);

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
                            ],
                          ),

                        ),
                      ),

                      SizedBox(height: 10.0),


                      Container(
                        height: 80.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                           Image.asset("assets/images/logo.png",height:60,color: Colors.white,),

                            Text("C  U  S  T  O  M  E R ",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10.0),


                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Search()),
                          );
                        },
                        child: Container(

                            height: 70.0,
                            margin: EdgeInsets.only(
                                top: 20.0, right: 20.0, left: 20.0),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/map.png",height:50),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("Select city to search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          ),
                          Image.asset("assets/images/right.png",height:25,color: Colors.black,),
                    ],
                  ),
                        ),
                      ),

                    ],
                  )


              ),


              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(246,244,241,1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0))
                ),
                 child:
                 Container(
                   margin: EdgeInsets.only(right: 3),
                   padding:EdgeInsets.only(left: 20,top:10,bottom: 10),
                 color: Colors.transparent,
                 child:
               Column(

               children: <Widget>[
                 Align(alignment: Alignment.centerLeft,child: Text('Featured',
                   style: TextStyle(
                     color: Colors.grey,
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
                     title: 'Flat ₹ 500 off',
                     discount: '₹ 500 off',
                     nextLine: ' on rental Booking',
                     subtitle: 'on all booking above 1000Rs.',
                     icons: Icon(Icons.landscape),
                     backArrow:Icon(Icons.arrow_forward),
                     color: Colors.red,
                     gradient: Colors.white,
                     onTab: (){

                     },

                   ),
                   ActivityListTile(
                     title: 'Flat ₹ 500 off',
                     discount: '₹ 500 off',
                     nextLine: ' on rental Booking',
                     subtitle: 'on all booking above 1000Rs.',
                     icons: Icon(Icons.landscape),
                     backArrow:Icon(Icons.arrow_forward),
                     color: Colors.red,
                     gradient: Colors.white,
                     onTab: (){

                     },

                   ),
                   ActivityListTile(
                     title: 'Flat ₹ 500 off',
                     discount: '₹ 500 off',
                     nextLine: ' on rental Booking',
                     subtitle: 'on all booking above 1000Rs.',
                     icons: Icon(Icons.landscape),
                     backArrow:Icon(Icons.arrow_forward),
                     color: Colors.red,
                     gradient: Colors.white,
                     onTab: (){

                     },

                   ),
                   ActivityListTile(
                     title: 'Flat ₹ 500 off',
                     discount: '₹ 500 off',
                     nextLine: ' on rental Booking',
                     subtitle: 'on all booking above 1000Rs.',
                     icons: Icon(Icons.landscape),
                     backArrow:Icon(Icons.arrow_forward),
                     color: Colors.red,
                     gradient: Colors.white,
                     onTab: (){

                     },

                   ),


                     ],
                   ),


                 ),
    /// add widgets from here
                Container(
                  child:
                  Align(alignment: Alignment.centerLeft,child: Text('Why Ridobiko',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  ),
                ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Row(
                children: <Widget>[
                  whyRido(
                    title: 'Home delivery & return',
                    subtitle: 'On time doorstep serive,at you\n preferred location and time',
                    trailingImage: Icon(Icons.home),
                    color: Colors.white,
                    onTab: (){

                    },
                  ),
                  whyRido(
                    title: 'Flexible pricing plans',
                    subtitle: 'On time doorstep serive,at you\n preferred location and time',
                    trailingImage: Icon(Icons.home),
                    color: Colors.white,
                    onTab: (){

                    },
                  ),
                  whyRido(
                    title: 'Well maintained bikes',
                    subtitle: 'On time doorstep serive,at you\n preferred location and time',
                    trailingImage: Icon(Icons.home),
                    color: Colors.white,
                    onTab: (){

                    },
                  ),
                  whyRido(
                    title: '24X7 support',
                    subtitle: 'On time doorstep serive,at you\n preferred location and time',
                    trailingImage: Icon(Icons.home),
                    color: Colors.white,
                    onTab: (){

                    },
                  ),

                ],
                ),
              ),

                 Container(
                   margin: EdgeInsets.only(bottom: 10),
                   child:
                   Row(
                     children: <Widget>[
                     Text("FAQs",textAlign: TextAlign.left,
                     style: TextStyle(
                       fontSize: 30,
                       color: Colors.grey,
                       fontWeight: FontWeight.bold),
                     ),
                       Padding(padding: EdgeInsets.only(left: 235)),
                       Container(
                         child:
                         Text('View all',
                           textAlign: TextAlign.right,
                           style: TextStyle(
                               fontSize: 14,
                               color: Colors.red
                           ),
                         ) ,
                       )

                     ],
                   ),
                 ),

              Spinner(text: 'spinner'),

                 Container(
                   margin: EdgeInsets.only(top: 30),
                   child:
                   Align(alignment: Alignment.centerLeft,child: Text('Happy Customers',
                     style: TextStyle(
                       color: Colors.grey,
                       fontWeight: FontWeight.bold,
                       fontSize: 30,
                     ),
                   ),
                   ),
                 ),


                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child:
                       Row(
                         children: <Widget>[
                          HappyCust(
                            title: 'Rajat Verma',
                            subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                            color: Colors.white,
                            onTab: (){

                            },
                          ),

                           HappyCust(
                             title: 'Abhinandan Singh',
                             subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                             color: Colors.white,
                             onTab: (){

                             },
                           ),
                           HappyCust(
                             title: 'Shantum Sharma',
                             subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                             color: Colors.white,
                             onTab: (){

                             },
                           ),

                           HappyCust(
                             title: 'Shivani Paswan',
                             subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                             color: Colors.white,
                             onTab: (){

                             },
                           ),

                           HappyCust(
                             title: 'Pooja kr',
                             subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                             color: Colors.white,
                             onTab: (){

                             },
                           ),
                           HappyCust(
                             title: 'Shubham Raj Tripathi',
                             subtitle: 'Nice service with on time pickup and delivery.Good customer support with friendly and very smooth and the package are pocket friendly overall an amazing experience. Would highly recommend',
                             color: Colors.white,
                             onTab: (){

                             },
                           ),

                         ],

                       )

                     ),
               ],

               )

                 ),
              ),
           Container(
             padding: EdgeInsets.only(top: 55,bottom: 55),
           color: Colors.white,
             height: 200,
             child: Row(
               children: <Widget>[
                 Container(
                   child: Icon(Icons.landscape),

                   margin: EdgeInsets.only(left: 30,right: 30),
                 ),
                 Container(
                   alignment: Alignment.centerLeft,
                   child: Column(
                     children: <Widget>[
                       Text('Highest rated',
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                         fontSize: 30
                       ),
                       ),
                       Padding(padding: EdgeInsets.only(bottom: 10)),
                       Text('self- drive bike rental and \nsubscription service in india',
                         style: TextStyle(
                           color: Colors.grey,
                           fontSize: 15
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           )



            ],
          ),
        ),
      ),
    );
  }

}
