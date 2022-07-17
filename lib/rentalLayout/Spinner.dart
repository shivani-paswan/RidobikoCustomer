
import 'package:flutter/material.dart';

class Spinner extends  StatefulWidget{
   String text;

  Spinner({required this.text});

  mySpinner createState() => mySpinner();
  }

class mySpinner extends State{
  String descText = "Ridobiko allow up to 125 km/hr. However,\nit is 80km/hr. in a few cities where some bikes \n might be equipped with speed governors as\n per goverment directivers.Ridobiko Strictly\n advises to fllow local speed limits";
  String secondText="yes,  extensions are possible subject to\n availability & charges.Cancellatiopns & modifi-\ncations will attract nominal charges as per our";
  String thirdText="yes,  extensions are possible subject to\n availability & charges.Cancellatiopns & modifi-\ncations will attract nominal charges as per our";
  String fourthText="yes,  extensions are possible subject to\n availability & charges.Cancellatiopns & modifi-\ncations will attract nominal charges as per our";
  bool secondShowFlag=false;
  bool descTextShowFlag = false;
  bool thirdTextShowFlag = false;
  bool fourthTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
   return
       Card(
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20.0),
         ),
         elevation: 10,
         margin: EdgeInsets.only(right: 20),
         color: Colors.white,
         child: Column(
           children:<Widget>[
             Container(

             margin: EdgeInsets.only(left: 30,bottom: 30,top: 30,right: 20),
             alignment: Alignment.topCenter,
             width: 330,
              child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Is there a speed limit?',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Container(
                      alignment: Alignment.centerRight,
                      child:
                        InkWell(
                          onTap: (){ setState(() {
                            descTextShowFlag= !descTextShowFlag;
                          }); },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              descTextShowFlag? Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.grey,) :  Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey,)
                            ],
                          ),
                        ),
                    ),
                  ],
                ) ,
                 Text(descText,
                     maxLines: descTextShowFlag? 8 : 1,textAlign: TextAlign.start),

               ],
             ),



    ),

       // second----------------------------------------------------------------------------------------------------
             Container(
               alignment: Alignment.topCenter,
               width: 330,
               margin: EdgeInsets.only(left: 30,bottom: 30,right: 20),
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Row(
                     children: [
                       Container(
                         alignment: Alignment.centerLeft,
                         child: Text(
                           'Can I extend/ cancel/modify?',
                           style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ),
                       Padding(padding: EdgeInsets.only(left: 44)),
                       Container(
                         alignment: Alignment.centerRight,
                         child:
                         InkWell(
                           onTap: (){ setState(() {
                             secondShowFlag = !secondShowFlag;
                           }); },
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               secondShowFlag ? Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.grey,) :  Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey,)
                             ],
                           ),
                         ),
                       ),
                     ],
                   ) ,
                   Text(secondText,
                       maxLines: secondShowFlag ? 8 : 1,textAlign: TextAlign.start),

                 ],
               ),



             ),
          // third---------------------------------------------------------------------------------------------------------------------
             Container(
               alignment: Alignment.topCenter,
               width: 330,
               margin: EdgeInsets.only(left: 30,bottom: 30,right: 20),
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Row(
                     children: [
                       Container(
                         alignment: Alignment.centerLeft,
                         child: Text(
                           'Booking criteria & document?',
                           style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ),
                       Padding(padding: EdgeInsets.only(left: 41)),
                       Container(
                         alignment: Alignment.centerRight,
                         child:
                         InkWell(
                           onTap: (){ setState(() {
                             thirdTextShowFlag = !thirdTextShowFlag;
                           }); },
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               thirdTextShowFlag ? Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.grey,) :  Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey,)
                             ],
                           ),
                         ),
                       ),
                     ],
                   ) ,
                   Text(thirdText,
                       maxLines: thirdTextShowFlag ? 8 : 1,textAlign: TextAlign.start),

                 ],
               ),

             ),

             // fourth---------------------------------------------------------------------------------------

             Container(
               alignment: Alignment.topCenter,
               width: 330,
               margin: EdgeInsets.only(left: 30,bottom: 30,right: 20),
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Row(
                     children: [
                       Container(
                         alignment: Alignment.centerLeft,
                         child: Text(
                           'Are there any restricted areas?',
                           style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ),
                       Padding(padding: EdgeInsets.only(left: 33)),
                       Container(
                         alignment: Alignment.centerRight,
                         child:
                         InkWell(
                           onTap: (){ setState(() {
                             fourthTextShowFlag = !fourthTextShowFlag;
                           }); },
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               fourthTextShowFlag ? Icon(Icons.keyboard_arrow_up,size: 30,color: Colors.grey,) :  Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.grey,)
                             ],
                           ),
                         ),
                       ),
                     ],
                   ) ,
                   Text(fourthText,
                       maxLines: fourthTextShowFlag ? 8 : 1,textAlign: TextAlign.start),

                 ],
               ),

             ),

         ]),
       );



  }

}