import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/login_page.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      routes:{
        "/home":(context)=>HomePage(),
        "/":(context)=>LoginPage(),
        "/login":(context)=>LoginPage()
      } ,
    );

  }
}
