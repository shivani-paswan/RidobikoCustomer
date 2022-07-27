import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridobiko/pages/select_city.dart';
import 'package:date_time_picker/date_time_picker.dart';
class Search extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _searchPage();
  }

}

class _searchPage extends State<Search> {
  var months=["Jan","Feb","March","April","May","June","Jul","Aug","Sept","Oct","Nov","Dec"];

  var weeks=["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
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
                    Text("Search",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 24),)
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("City",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SelectCity()));
                  },
                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Select City",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Start Date",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("End Date",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w500,fontSize: 18),),
                    ),
                  ],
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (){
                                _selectStartDate(context);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("${selectedDate.day} ${months[((selectedDate.month)-1)]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                                      SizedBox(width: 5,),
                                      Text("${selectedTime.hour<10?"0${selectedTime.hour % 12}":(selectedTime.hour % 12).toString()}:${selectedTime.minute<10?"0${selectedTime.minute}":selectedTime.minute.toString()} ${selectedTime.period.name.toUpperCase()}",style: TextStyle(color: Colors.grey[700],fontSize: 18)),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(weeks[selectedDate.weekday-1],style: TextStyle(color: Colors.grey[700],fontSize: 20)),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  children: [
                                    Text('20 Jul',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                                    SizedBox(width: 5,),
                                    Text('04:30 AM',style: TextStyle(color: Colors.grey[700],fontSize: 18)),

                                  ],
                                ),

                                Row(
                                  children: [
                                    Text('Thursday',style: TextStyle(color: Colors.grey[700],fontSize: 20)),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Card(
                          color: Colors.grey[100],
                          margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Duration: ",style: TextStyle(color: Colors.grey[700],fontSize: 17),),
                                Text("1 Day, ",style: TextStyle(color: Colors.grey[700],fontSize: 17),),
                                Text("8 hours",style: TextStyle(color: Colors.grey[700],fontSize: 17),),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(colors: [Colors.red[700]!,Colors.purple[300]!])
                ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DateTime selectedDate = DateTime.now();
  var selectedTime = TimeOfDay.now();
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate=picked;
      });
     var time= await showTimePicker(context: context, initialTime: TimeOfDay.now());
     if (time != null && time != selectedDate) {
        setState(() {
          selectedTime = time;
        });
     }
    }
  }

}