import 'package:flutter/material.dart';
import 'package:ridobiko/pages/rental.dart';
import 'package:ridobiko/subscriptionLayout/TabBarSection.dart';
import 'package:ridobiko/subscriptionLayout/WhySubscriptions.dart';

import '../rentalLayout/HappyCustomer.dart';
import '../rentalLayout/Spinner.dart';
import '../rentalLayout/Tile.dart';
import '../rentalLayout/WhyRidobiko.dart';

class Subscriptions extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return mySubscription();
  }

}
class mySubscription extends State{
  Color rentalBackgroundColor=Colors.white;
  Color subsBackgroundColor=Colors.redAccent;

  @override
  Widget build(BuildContext context) {
   return

     Scaffold(
       backgroundColor: Color.fromRGBO(244, 67, 54, 1),


       body:
       SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
                 color: Color.fromRGBO(244, 67, 54, 1),
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
                                   // Navigator.pushReplacement(
                                   //   context,MaterialPageRoute(builder: (context) => Rental ()),);          // change screen
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
                           Image.asset("assets/images/logo.png",height:60,color: Colors.white,),

                           Text("S U B S C R I P T I O N S",
                             style: TextStyle(color: Colors.black,
                                 fontSize: 15.0,
                             ),
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
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Icon(Icons.location_on,color: Colors.red, size: 40,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8.0),
                             child: Text("Select city to search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                           ),
                           Icon(Icons.arrow_right_alt_sharp,color: Colors.red, size: 40,),

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

                       /// add widgets from here
                       Container(
                         child:
                         Align(alignment: Alignment.centerLeft,child: Text('Why Subsciptions',
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
                             WhySub(
                               title: 'No Down',
                               subtitle: 'payment',
                               trailingImage: Icon(Icons.home),
                               color: Colors.lime,
                               cardColor: Colors.limeAccent,
                               onTab: (){

                               },
                             ),
                             WhySub(
                               title: 'Cheaper',
                               subtitle: 'than EMI',
                               trailingImage: Icon(Icons.home),
                               color: Colors.grey,
                               cardColor: Colors.white,
                               onTab: (){

                               },
                             ),

                             WhySub(
                               title: 'Free service&',
                               subtitle: 'maintance',
                               trailingImage: Icon(Icons.home),
                               color: Colors.green,
                               cardColor: Colors.greenAccent,
                               onTab: (){

                               },
                             ),

                             WhySub(
                               title: 'Extend or',
                               subtitle: 'return anytime',
                               trailingImage: Icon(Icons.home),
                               color: Colors.cyanAccent,
                               cardColor: Colors.grey,
                               onTab: (){

                               },
                             ),


                           ],
                         ),
                       ),

                       Container(
                         alignment: Alignment.centerLeft,
                         child:
                         DefaultTabController(
                           length: 3,
                           child: TabBar(
                             indicatorColor: Colors.red,
                             labelColor: Colors.red,
                             unselectedLabelColor: Colors.grey,
                             padding: EdgeInsets.symmetric(horizontal: 5),
                             tabs: [
                               Tab(
                                   child: Text(
                                     'Hatchi',
                                     style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold
                                     ),
                                   ),
                           ),
                               Tab(
                                 child: Text(
                                   'Sedans',
                                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold
                                   ),
                                 ),
                               ),
                               Tab(
                                 child: Text(
                                   "SUV's",
                                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold
                                   ),
                                 ),
                                  ),
                             ],
                           ),
                         ),
                       ),

                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child:
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                         TabBarSection(
                             title: 'Hero Moto CORP',
                             subtitle: '14,499 Rs.',
                             trailingImage:Icon(Icons.landscape) ,
                             color: Colors.grey,
                             onTab: (){

                             }),
                            TabBarSection(
                                title: 'Hero Moto CORP',
                                subtitle: '14,499 Rs.',
                                trailingImage:Icon(Icons.landscape) ,
                                color: Colors.grey,
                                onTab: (){

                                }),
                            TabBarSection(
                                title: 'Hero Moto CORP',
                                subtitle: '14,499 Rs.',
                                trailingImage:Icon(Icons.landscape) ,
                                color: Colors.grey,
                                onTab: (){

                                }),
                            Container(
                              height: 160,
                              width:80,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Icon(Icons.arrow_right_alt,size: 30,),
                                  Padding(padding: EdgeInsets.only(top: 8)),
                                  Center(
                                  child: Text('view all',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red
                                  ),),
                                ),
                              ]),
                            )

                          ],
                        ),
                      ),
                    ),

                       Align(alignment: Alignment.centerLeft,child: Text('How it works',
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),
                       ),
                       ),
                       Container(

                         width: 350,
                         margin: EdgeInsets.only(right: 20,bottom: 20,top: 10),
                         child:
                       Card(
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(25.0),
                         ),
                         elevation: 10,
                         color: Colors.white,
                         child:
                           Row(
                             children:[

                               Container(
                                 padding: EdgeInsets.only(right: 20,left: 10),
                                 child: Icon(Icons.landscape),
                               ),

                               Expanded(
                                 
                                 child: Column(
                                 children:< Widget>[
                                   Padding(padding: EdgeInsets.only(top: 40)),
                                   ListTile(
                                     title: Text('Select a bike',
                                     style: TextStyle(fontWeight: FontWeight.bold),
                                     ),
                                     subtitle: Text('Pick a bike from 25+ models & tenure from 1-36 months'),
                                   ),
                                   Padding(padding: EdgeInsets.only(top: 20)),
                                   ListTile(
                                     title: Text('Pay & book',
                                       style: TextStyle(fontWeight: FontWeight.bold),),
                                     subtitle: Text('Pick a bike from 25+ models & tenure from 1-36 months'),

                                   ),
                                   Padding(padding: EdgeInsets.only(top: 20)),
                                   ListTile(
                                     title: Text('Home delivery',
                                       style: TextStyle(fontWeight: FontWeight.bold),),
                                     subtitle: Text('Pick a bike from 25+ models & tenure from 1-36 months'),
                                   ),
                                   Padding(padding: EdgeInsets.only(top: 20)),
                                   ListTile(
                                     title: Text('Monthly billing',
                                       style: TextStyle(fontWeight: FontWeight.bold),),
                                     subtitle: Text('Pick a bike from 25+ models & tenure from 1-36 months'),

                                   ),
                                   Padding(padding: EdgeInsets.only(bottom: 40)),

                                 ],
                             ),
                               ),
                          ] ),
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
                         margin: EdgeInsets.only(bottom: 10,top: 20),
                         child:
                         Row(
                           children: <Widget>[
                             Text("Subscription vs buying",textAlign: TextAlign.left,
                               style: TextStyle(
                                   fontSize: 25,
                                   color: Colors.grey,
                                   fontWeight: FontWeight.bold),
                             ),
                             Padding(padding: EdgeInsets.only(left: 45)),
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

                       Container(
                         margin: EdgeInsets.only(top: 20,right: 20),
                         child:

                         Card(
                           shape:RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25.0),
                           ),
                           elevation: 10,
                           color: Colors.white,
                           child: Column(

                             children:[
                               Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 10,bottom: 20)),
                               Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: <Widget>[
                                 Text("Subscribe",textAlign: TextAlign.right,
                                   style: TextStyle(
                                       fontSize: 15,
                                       color: Colors.grey[800],
                                       fontWeight: FontWeight.bold),
                                 ),
                                 Padding(padding: EdgeInsets.only(right: 10,left: 10)),
                                 Container(
                                   padding: EdgeInsets.only(right: 20),
                                   child:
                                   Text('Buy',
                                     textAlign: TextAlign.right,
                                     style: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.grey[800]
                                     ),
                                   ) ,
                                 )

                               ],
                             ),

                               ListTile(
                                 title: Text('Zero down payment& '),
                                 trailing:
                                 SizedBox(
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.end,children: [
                                       Icon(Icons.check,color: Colors.green,),
                                     Padding(padding: EdgeInsets.only(left: 50)),
                                     Icon(Icons.cancel_outlined,color: Colors.red,)
                                   ],
                                   ),
                                 ),
                               ),
                               ListTile(
                                 title: Text('Annual insurance included '),
                                 trailing:
                                 SizedBox(
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.end,children: [
                                     Icon(Icons.check,color: Colors.green,),
                                     Padding(padding: EdgeInsets.only(left: 50)),
                                     Icon(Icons.cancel_outlined,color: Colors.red,)
                                   ],
                                   ),
                                 ),
                               ),

                               ListTile(
                                 title: Text('Free service & maintenance '),
                                 trailing:
                                 SizedBox(
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.end,children: [
                                     Icon(Icons.check,color: Colors.green,),
                                     Padding(padding: EdgeInsets.only(left: 50)),
                                     Icon(Icons.cancel_outlined,color: Colors.red,)
                                   ],
                                   ),
                                 ),
                               ),

                               ListTile(
                                 title: Text('return or extends anytimes'),
                                 trailing:
                                 SizedBox(
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.end,children: [
                                     Icon(Icons.check,color: Colors.green,),
                                     Padding(padding: EdgeInsets.only(left: 50)),
                                     Icon(Icons.cancel_outlined,color: Colors.red,)
                                   ],
                                   ),
                                 ),
                               ),
                               ListTile(
                                 title: Text('Zero down payment& '),
                                 trailing:
                                 SizedBox(
                                   width: 100,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.end,children: [
                                     Icon(Icons.check,color: Colors.green,),
                                     Padding(padding: EdgeInsets.only(left: 50)),
                                     Icon(Icons.cancel_outlined,color: Colors.red,)
                                   ],
                                   ),
                                 ),
                               ),
                           Padding(padding: EdgeInsets.only(bottom: 20))
                           ]),
                         ),
                       ),

                       Container(
                         margin: EdgeInsets.only(bottom: 10,top: 10),
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
     );




  }

}