import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return screen();
  }

}
class screen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
          children:[
            Container(
            color: Colors.grey[300],
            child:
            Column(
              children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 10,top: 20),
                    width: double.infinity,
                    height: 150,
                    child:
                    Column(
                      children:[
                        Expanded(
                          child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new_rounded),
                            Expanded(
                              child:
                              Container(
                                padding: EdgeInsets.only(top: 10,right: 10,left: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                margin:EdgeInsets.only(left: 10,right: 10),
                                height: 70,
                                child: Column(
                                  children:<Widget> [
                                    Align(alignment: Alignment.topLeft,child: Text('Bangalore',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                                    Padding(padding: EdgeInsets.only(bottom: 10)),
                                    Expanded(child: Row(
                                      children: [
                                        Align(alignment: Alignment.topLeft,child: Text('20 Jul ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),),
                                        Align(alignment: Alignment.topLeft,child: Text(' 02:30pm Fri',style: TextStyle(fontSize: 12),),),
                                        Padding(padding: EdgeInsets.only(right: 20)),
                                        Align(alignment: Alignment.topLeft,child: Text('31 Jul ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),),
                                        Align(alignment: Alignment.topLeft,child: Text(' 02:30pm Sun',style: TextStyle(fontSize: 12),),),
                                        Padding(padding: EdgeInsets.only(right: 50)),
                                        Icon(Icons.keyboard_arrow_down,color: Colors.grey[500],),

                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            )
                          ],
                      ),
                        ),


                         Row(
                          children: [
                            Container(child: Align(alignment: Alignment.topCenter,child: Text(' Filter & Sort ',style: TextStyle(fontSize: 12)),), decoration: textBorder(),height:30,margin: EdgeInsets.only(left: 20),padding: EdgeInsets.all(5),),
                            Container(child: Align(alignment: Alignment.topCenter,child: Text(' Price: Low to High',style: TextStyle(fontSize: 12)),), decoration: textBorder(),height:30,margin: EdgeInsets.only(left: 20),padding: EdgeInsets.all(5),),
                            Container(child: Align(alignment: Alignment.topCenter,child: Text(' 7 Seaters ',style: TextStyle(fontSize: 12)),), decoration: textBorder(),height:30,margin: EdgeInsets.only(left: 20),padding: EdgeInsets.all(5),),

                          ],
                        )

                      ]) ,
                  ),


                Expanded(child: Row(
                  children: [
                    Align(alignment: Alignment.topLeft,child: Text('19 Bikes available ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),

                  ],
              ))



              ],
            ),
          ),
       ] ),
      )
    );
  }

}
BoxDecoration textBorder(){
  return BoxDecoration(
    border: Border.all(
      color: Colors.black45,
      width: 1.0
    ),
    borderRadius: BorderRadius.all(Radius.circular(10))
  );
}