
import 'package:flutter/material.dart';
import 'package:ridobiko/rentalLayout/HappyCustomer.dart';
import 'package:ridobiko/rentalLayout/Spinner.dart';
import 'package:ridobiko/rentalLayout/Tile.dart';
import 'package:ridobiko/rentalLayout/WhyRidobiko.dart';
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
              padding: EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
            color: Colors.red,
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
                   title: 'Rental booking',
                   nextLine: 'On all booking above \n10,000/- Rs',
                   subtitle: 'Flat 500 Rs. off',
                   bikeImage: Icon(Icons.landscape),
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Colors.white,
                   gradient: Colors.white,
                   onTab: (){

                   },

                 ),

                 ActivityListTile(
                   title: 'rental package',
                   bikeImage: Icon(Icons.landscape),
                   nextLine: 'on all booking of 5 days\n & more',
                   subtitle: '10% flat off',
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Colors.white,
                   gradient: Colors.white,
                   onTab: (){

                   },
                 ),
                 ActivityListTile(
                   title: 'rental package',
                   bikeImage: Icon(Icons.landscape),
                   nextLine: 'on all booking of 10 days',
                   subtitle: '15% flat off',
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Colors.white,
                   gradient: Colors.white,
                   onTab: (){

                   },
                 ),
                 ActivityListTile(
                   title: '15 days rental\n package',
                   nextLine: 'on all booking or 15 days',
                   subtitle: '20% flat off',
                   bikeImage: Icon(Icons.landscape),
                   trailingImage:Icon(Icons.arrow_forward),
                   color: Colors.white,
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
                    color: Colors.grey[800],
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
                     color: Colors.grey[800],
                     fontWeight: FontWeight.bold),
                   ),
                     Padding(padding: EdgeInsets.only(left: 235)),
                     Container(
                       child:
                       Text('View all',
                         textAlign: TextAlign.right,
                         style: TextStyle(
                             fontSize: 14,
                             color: Colors.white
                         ),
                       ) ,
                     )

                   ],
                 ),
               ),

            Spinner(text: 'spinner'),

               Container(
                 margin: EdgeInsets.only(bottom: 10,top: 10),
                 child:
                 Align(alignment: Alignment.centerLeft,child: Text('Happy Customers',
                   style: TextStyle(
                     color: Colors.grey[800],
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
    );
  }

}
