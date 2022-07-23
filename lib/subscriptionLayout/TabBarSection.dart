

import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget{
  String title;
  String subtitle;
  Widget trailingImage;
  VoidCallback onTab;
  Color color;

  TabBarSection({required  this.title,required this.subtitle,required this.trailingImage,required this.color,required this.onTab});
  @override
  Widget build(BuildContext context) {
   return
     Padding(
       padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
       child:
       GestureDetector(
         onTap: onTab,
         child:
         Container(
           child: Stack(
             alignment: Alignment.centerLeft,
             children:< Widget>[

               Card(
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                 elevation: 10,
                 color: Colors.white,

                 child: Column(
                   children:[
                     Padding(padding: const EdgeInsets.only(top: 10),
                       child:
                       Container(
                           height: 50,
                           width: 75,
                           alignment: Alignment.topLeft,
                           // padding: EdgeInsets.only(left: 20),
                           child: trailingImage),
                     ),

                     Container(
                     height: 100,
                     width:200,
                     child: ListTile(

                       title:
                       Padding(padding:const EdgeInsets.only(top:8),
                         child:
                         Text(title,
                             style: TextStyle(
                                 color: Colors.grey[800],
                                 fontWeight: FontWeight.bold,
                                 fontSize: 18
                             )),
                       ),

                       subtitle:
                       Padding(padding:const EdgeInsets.only(top:8),
                         child:
                         Text(subtitle,
                           style: TextStyle(
                             color: Colors.red,
                             fontWeight: FontWeight.bold,
                             fontSize: 20,

                           ),),
                       ),
                     ),
                   ),
                 ]),

               ),


             ],
           ),
         ),

       )
       ,
     );
  }

}