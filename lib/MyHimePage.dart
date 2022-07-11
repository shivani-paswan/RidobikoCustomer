import 'package:flutter/material.dart';
import 'pages/rental.dart';
import 'pages/payment.dart';
import 'pages/booking.dart';
import 'pages/more.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{
  int selectedPage=0;
  final _pageOptions=[Rental(),Payment(),Booking(),More()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //
        //   title: Text("Home page"),
        // ),
        body:_pageOptions[selectedPage],     // this will load page 1 from pageOption array list
        bottomNavigationBar:
        BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            selectedFontSize: 14.0,
            unselectedFontSize:12.0,

            currentIndex: selectedPage,
            onTap: (int index) {
              setState(() {
                selectedPage = index;
              });
            },
            items:<BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.car_rental),
                label: 'Rental',

              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.payment),
                  label: 'Payment'
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.book_online),
                  label: 'Booking'
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert_rounded),
                  label: 'More'
              ),

            ]
        )
    );
  }
}

