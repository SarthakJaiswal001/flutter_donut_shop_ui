import 'package:flutter/material.dart';

class PanCakeTab extends StatelessWidget{
  const PanCakeTab({super.key});

  @override
  Widget build(context){
    return Container(
      child: Center(child: const Text('PanCake',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),)),
    );
  } 
}