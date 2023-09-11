import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  DonutTile(
      {super.key,
      required this.donutColor,
      required this.donutFlavor,
      required this.donutImage,
      required this.donutPrice});
  final String donutPrice;
  final donutColor;
  final String donutFlavor;
  final String donutImage;
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: donutColor[50],
        ),
        child: Column(
          children: [
            //price
            //pictures
            //flavor
            //love button and add icon

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          topRight: Radius.circular(6))),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        color: donutColor[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              child: Image.asset(donutImage),
            ),
            Text(
              donutFlavor,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Dunkins',
              style: TextStyle(
                  color: Color.fromARGB(255, 122, 121, 121), fontSize: 12),
            ),
            SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
