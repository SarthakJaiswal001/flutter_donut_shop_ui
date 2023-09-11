import 'package:donut_shop_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(context){
    return  MaterialApp(
      theme: ThemeData(useMaterial3: true,primarySwatch:  Colors.pink),
      home:HomePage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}