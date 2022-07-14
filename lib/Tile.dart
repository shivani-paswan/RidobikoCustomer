import 'package:flutter/material.dart';



class ActivityListTile extends StatelessWidget{
  String title;
  String nextLine;
  String subtitle;
  Widget trailingImage;
  Widget bikeImage;
  VoidCallback onTab;
  Color color;
  Color gradient;

  ActivityListTile({ required this.title,required this.bikeImage,required this.nextLine,required this.subtitle,required this.trailingImage,required this.onTab,required this.color,required this.gradient});
  @override
  Widget build(BuildContext context) {
    return

        Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child:
              GestureDetector(
                onTap: onTab,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Card(
                      child: Container(
                        decoration: const BoxDecoration(
                        color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),
                        height: 140,
                        width: 250,
                        child: ListTile(

                          title:
                          Padding(padding:const EdgeInsets.only(top:8),
                            child: Text(title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            )),
                          ),

                          subtitle:
                          Padding(padding:const EdgeInsets.only(top:8),
                            child: Text(subtitle,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),
                    ),
                       Container(
                       padding: EdgeInsets.only(bottom: 50,right: 100),
                           child: Text(nextLine,
                           style: TextStyle(
                             color: Colors.redAccent
                           ),),
                       ),
                    Padding(padding: const EdgeInsets.only(bottom: 10),
                      child:
                      Container(
                        padding: EdgeInsets.only(right: 15),
                          child: trailingImage),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 10),
                      child:
                      Container(
                          padding: EdgeInsets.only(right: 20,bottom: 100),
                          child: bikeImage),
                    )
                  ],
                ),
              )

        );
  }

}