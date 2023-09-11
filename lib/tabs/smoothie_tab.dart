import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget{
  const SmoothieTab({super.key});

  @override
  Widget build(context){
    return Container(
      child: Center(child: const Text('Smoothie',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),)),
    );
  } 
}