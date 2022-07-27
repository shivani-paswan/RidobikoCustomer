import 'package:flutter/material.dart';



class ActivityListTile extends StatelessWidget{
  String title;
  String nextLine;
  String subtitle;
  String discount;
  Widget backArrow;
  Widget icons;
  VoidCallback onTab;
  Color color;
  Color gradient;

  ActivityListTile(
      { required this.title,required this.icons,required this.discount,required this.nextLine,required this.subtitle,required this.backArrow,required this.onTab,required this.color,required this.gradient});
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
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 10,
                        color: Colors.white,

                        child: Container(
                          height: 140,
                          width: 270,
                          child: Column(
                            children:[ Row(
                              children: [
                                Container(width: 70,height: 30,margin:EdgeInsets.only(top: 10,left: 20),decoration: BoxDecoration(color: color,borderRadius: BorderRadius.all(Radius.circular(8))),
                                  child: Center(child: Text(discount,style: TextStyle(color: Colors.white),),),),
                                Padding(padding:EdgeInsets.only(left: 5,top: 10),child: Text(nextLine))
                              ],
                            ),
                              ListTile(
                                leading: icons,
                                title: Text(title,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                                subtitle: Text(subtitle,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11),),
                              ),
                              Padding(padding: EdgeInsets.only(left: 200),child: backArrow,)
                          ]),

              )
  ),

   ] )
    )
              )
        );
  }

}