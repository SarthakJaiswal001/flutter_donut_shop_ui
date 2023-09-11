import 'package:donut_shop_ui/tabs/burger_tab.dart';
import 'package:donut_shop_ui/tabs/donut_tab.dart';
import 'package:donut_shop_ui/tabs/pancake_tab.dart';
import 'package:donut_shop_ui/tabs/pizza_tab.dart';
import 'package:donut_shop_ui/tabs/smoothie_tab.dart';
import 'package:donut_shop_ui/utilities/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/donut.png'),
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png'),
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
  ];

  @override
  Widget build(context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: const Color.fromARGB(255, 10, 9, 9),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  color: const Color.fromARGB(255, 56, 53, 53),
                ),
              )
            ]),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to eat',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  )
                 
                ],
                 
              ),
            ),
             TabBar(tabs: myTabs),
             Expanded(child: TabBarView(children: [
              BurgerTab(),
              DonutTab(),
              
              PanCakeTab(),
              PizzaTab(),
              SmoothieTab()
             ],))
          ],
        ),
      ),
    );
  }
}

