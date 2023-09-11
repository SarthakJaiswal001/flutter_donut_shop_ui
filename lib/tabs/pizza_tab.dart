import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget{
  const PizzaTab({super.key});

  @override
  Widget build(context){
    return Container(
      child: Center(child: const Text('Pizza',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),)),
    );
  } 
}