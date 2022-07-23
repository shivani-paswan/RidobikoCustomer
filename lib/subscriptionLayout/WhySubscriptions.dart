

import 'package:flutter/material.dart';

class WhySub extends StatelessWidget{
  String title;
  String subtitle;
  Widget trailingImage;
  VoidCallback onTab;
  Color color;
  Color cardColor;

  WhySub({required this.title,required this.subtitle,required this.trailingImage,required this.onTab,required this.color,required this.cardColor});
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
                 color: cardColor,
                 child: Container(
                   height: 110,
                   width: 220,
                   child: ListTile(

                     title:
                     Padding(padding:const EdgeInsets.only(top:15 ,left: 70),
                       child:
                       Text(title,
                           style: TextStyle(
                               color: Colors.grey[800],
                               fontWeight: FontWeight.bold,
                               fontSize: 18
                           )),
                     ),

                     subtitle:
                     Padding(padding:const EdgeInsets.only(top:8,left:70),
                       child:
                       Text(subtitle,
                         style: TextStyle(
                             color: Colors.grey[800],
                             fontWeight: FontWeight.bold,
                             fontSize: 17
                         ),),
                      ),
                   ),
                 ),
               ),
               Padding(padding: const EdgeInsets.only(bottom: 10),

                 child:
                 Container(
                   height: 65,
                   width: 70,
                   decoration: BoxDecoration(
                     color: color,
                     borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40))
                   ),
                   margin: EdgeInsets.only(left: 4),
                       child: trailingImage ,

                     )
                    ),

             ],
           ),
         ),

       )
       ,
     );
  }

}