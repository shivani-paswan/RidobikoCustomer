 import 'package:flutter/material.dart';

class SearchingTile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Tile();
  }

}
class Tile extends State{
  @override
  Widget build(BuildContext context) {
   return
   GestureDetector(
     onTap: (){},
     child: Container(
       margin: EdgeInsets.only(left: 10,right: 10),
       height: 160,
       child: Card(
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(8),
         ),
         elevation: 10,
         color: Colors.white,
         child: Row(
           children: [
             Expanded(child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(padding: EdgeInsets.only(top: 10,left: 15),child:Text(' Hero ',textAlign: TextAlign.left,style: TextStyle(color: Colors.grey,fontSize: 17),)),
                 Padding(padding: EdgeInsets.only(left: 20,bottom: 5),child:Text('Hero HF 100',textAlign: TextAlign.left,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                 Row(children: [
                   Padding(padding:EdgeInsets.only(left: 20),child: Image.asset("assets/images/diesel.png",height:15,color: Colors.black54,)),Text(' Patrol',style: TextStyle(color: Colors.black54),),
                   Padding(padding:EdgeInsets.only(left: 10),child: Image.asset("assets/images/bike.png",height:20,color: Colors.black54,)),Text(' 2 Seats',style: TextStyle(color: Colors.black54),),],),
                 Padding(padding: EdgeInsets.only(left: 20,top: 15),child:Text('9,569 Rs.',textAlign: TextAlign.left,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                 Padding(padding: EdgeInsets.only(left: 20,),child:Text('336 KM|Exclude fuel cost',textAlign: TextAlign.left,style: TextStyle(color: Colors.grey,fontSize: 13,))),
               ],
             )),
             Expanded(child: Column(
               children: [
                 Padding(padding:EdgeInsets.only(top: 10,bottom: 10), child: Image.asset("assets/images/img.png",height:80,)),
                Container(
                  margin:EdgeInsets.only(right: 40,left: 40),
                  height:40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(begin:Alignment.topRight,end: Alignment.bottomLeft,colors: [Colors.red,Colors.purple] )),

                  child: InkWell(onTap: (){}, child:
                  Row(crossAxisAlignment:CrossAxisAlignment.center,
                    children: [Padding(padding: EdgeInsets.only(left: 30)),Text('Book',style: TextStyle(color: Colors.white,),),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,)
                    ],)
                    ,)
                  ,)
               ],
             )),

           ],
         ),
       ),
     ),
   );
  }

}