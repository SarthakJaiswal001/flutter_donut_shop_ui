import 'package:flutter/material.dart';

class MyTab extends StatelessWidget{
  const MyTab({super.key, required this.iconPath});
  final String iconPath;
  @override
  Widget build(context){
    return Tab(
      
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 234, 234),
          borderRadius: BorderRadius.circular(10)
        ),
        height: 50,
          child: Image.asset(iconPath),
      ),
    );
  }
}