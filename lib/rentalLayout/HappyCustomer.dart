
import 'package:flutter/material.dart';

class HappyCust extends StatelessWidget{
  String title;
  String subtitle;
  VoidCallback onTab;
  Color color;

  HappyCust({required this.title,required this.subtitle,required this.onTab,required this.color});

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
                  height: 270,
                  width: 300,
                  child: ListTile(

                    title:
                    Padding(padding:const EdgeInsets.only(top:20,bottom: 20,right: 20),
                      child:
                      Text(title,
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          )),
                    ),

                    subtitle:
                    Padding(padding:const EdgeInsets.only(top: 5,right: 20),
                      child:
                      Text(subtitle,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,

                        ),),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      )
      ,
    );


  }

}