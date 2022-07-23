import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'MyHimePage.dart';
void main() {
  runApp( MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black, // status bar color
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ridobiko',
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );

  }

}

