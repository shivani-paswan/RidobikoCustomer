import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SelectCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _selectCityPage();
  }

}

class _selectCityPage extends State<SelectCity> {
  var cities=["Agra","Alwar","Bhilai","Bhopal","Bhubaneswar","Chandigarh",
    "Chengalpattu","Cuttack","Dehradun","Delhi"
    ,"Dharamshala","Gandhi Nagar","Goa","Gurgaon","Haridwar","Indore",
    "Jaipur","Jaisalmer","Kolhapur","Kolkata","Kullu","Lucknow","Mahabalipuram","Manali",
    "Mathura","Mount Abu","Mumbai","Nainital","Raipur","Rishikesh","Shimla","Siliguri",
    "Srinagar","Udaipur"];
var pos=0;

  String selected="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(

            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_left,size: 40,),
                      SizedBox(width: 10,),
                      Text("Select City",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 24),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Popular Cities",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                  ),
                 Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                        _popularCity("Gurgaon","assets/images/Gurgaon.svg"),
                        _popularCity("Amritsar","assets/images/Amritsar.svg"),
                        _popularCity("Delhi","assets/images/Delhi.svg"),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         _popularCity("Jaipur","assets/images/Jaipur.svg"),
                         _popularCity("Roorkee","assets/images/Roorkee.svg"),
                         _popularCity("Ahmedabad","assets/images/ahmedabad.svg"),
                       ],
                     ),
                   ],
                 ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Other Cities",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          _otherCity(cities[0]),
                          _otherCity(cities[1]),
                          _otherCity(cities[2]),
                          _otherCity(cities[3]),
                          _otherCity(cities[4]),
                          _otherCity(cities[5]),
                          _otherCity(cities[6]),
                          _otherCity(cities[7]),
                          _otherCity(cities[8]),
                          _otherCity(cities[9]),
                          _otherCity(cities[10]),
                          _otherCity(cities[11]),
                          _otherCity(cities[12]),
                          _otherCity(cities[13]),
                          _otherCity(cities[14]),
                          _otherCity(cities[15]),
                          _otherCity(cities[16]),
                          _otherCity(cities[17]),
                          _otherCity(cities[18]),
                          _otherCity(cities[19]),
                          _otherCity(cities[20]),
                          _otherCity(cities[21]),
                          _otherCity(cities[22]),
                          _otherCity(cities[23]),
                          _otherCity(cities[24]),
                          _otherCity(cities[25]),
                          _otherCity(cities[26]),
                          _otherCity(cities[27]),
                          _otherCity(cities[28]),
                          _otherCity(cities[29]),
                          _otherCity(cities[30]),
                          _otherCity(cities[31]),
                          _otherCity(cities[32]),
                          _otherCity(cities[33]),

                        ]
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _otherCity(String name){
    return
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap:(){
          selected=name;
          setState((){});
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(name,style: TextStyle(fontSize: 17,color: selected==name?Colors.red[700]:Colors.black),textAlign: TextAlign.left,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 1,
                color: Colors.grey[200],
              ),
            )
          ],
        ),
      );
  }

 Widget _popularCity(String name, String svg) {
    return  GestureDetector(
      onTap: (){
        selected=name;
        setState((){});
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            width: 1.5,
            color: selected==name? Colors.red[700]! : Colors.white
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            width: 80,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(svg,width: 80,fit: BoxFit.cover,color: selected==name?Colors.red[700]:Colors.black,),
                Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: selected==name?Colors.red[700]:Colors.black),)
              ],
            ),
          ),
        ),
      ),
    );
 }

}