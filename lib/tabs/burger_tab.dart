import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget{
  const BurgerTab({super.key});

  @override
  Widget build(context){
    return Container(
      child: Center(child: const Text('Burger',style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),)),
    );
  } 
}