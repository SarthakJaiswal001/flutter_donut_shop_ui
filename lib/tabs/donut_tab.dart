import 'package:donut_shop_ui/utilities/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});
  final List donutsOnSale = [
    //donutprice, donutcolor, donutflavoe, donutimagename
    ['10', Colors.brown, 'Chocolate Donut', 'lib/images/chocolate_donut.png'],
    ['12', Colors.green, 'Grape Donut', 'lib/images/grape_donut.png'],
    ['34', Colors.yellow, 'IceCream Donut', 'lib/images/icecream_donut.png'],
    ['23', Colors.pink, 'StrawBerry Dnout', 'lib/images/strawberry_donut.png'],
  ];

  @override
  Widget build(context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 /
                1.5 //this simply turn the gridview from square to rectangle),
            ),
        itemCount: donutsOnSale.length,
        itemBuilder: (context, index) {
          return DonutTile(
              donutColor: donutsOnSale[index][1],
              donutFlavor: donutsOnSale[index][2],
              donutImage: donutsOnSale[index][3],
              donutPrice: donutsOnSale[index][0]);
        });
  }
}
