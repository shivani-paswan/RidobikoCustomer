

import 'package:flutter/material.dart';

class whyRido extends StatelessWidget{
  String title;
  String subtitle;
  Widget trailingImage;
  VoidCallback onTab;
  Color color;


  whyRido({required this.title,required this.subtitle,required this.trailingImage,required this.onTab,required this.color});

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
                   borderRadius: BorderRadius.circular(20.0),
                 ),
                 elevation: 10,
                 color: Colors.white,
                 child: Container(
                   height: 100,
                   width: 300,
                   child: ListTile(

                     title:
                     Padding(padding:const EdgeInsets.only(top:8,left: 50),
                       child:
                       Text(title,
                           style: TextStyle(
                               color: Colors.grey[800],
                               fontWeight: FontWeight.bold,
                               fontSize: 18
                           )),
                     ),

                     subtitle:
                     Padding(padding:const EdgeInsets.only(top:8,left: 50),
                       child:
                       Text(subtitle,
                         style: TextStyle(
                             color: Colors.grey,
                             fontSize: 14,

                         ),),
                     ),
                   ),
                 ),
               ),
               Padding(padding: const EdgeInsets.only(bottom: 10),
                 child:
                 Container(
                     padding: EdgeInsets.only(left: 20),
                     child: trailingImage),
               ),

             ],
           ),
         ),

       )
         ,
       );
  }

}