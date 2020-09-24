import 'package:flutter/material.dart';
import 'package:chukyso/src/models/category.dart';
import '../helpers/style.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "New-CA", image: "newca-product.jpg"),
  Category(name: "Vina-CA", image: "vina-product.jpg"),
  Category(name: "Viettel-CA", image: "chu-ky-so-viettel.jpg"),
  Category(name: "FPT-CA", image: "chu-ky-so-fpt-ca.jpg"),
  Category(name: "VNPT-CA", image: "vnpt-product.jpg"),
  Category(name: "Bkav-CA", image: "bkav-product.jpg"),
  Category(name: "Misa-CA", image: "misa-product.jpg"),
  Category(name: "Easy-CA", image: "easy-product.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(4.0, 6.0),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 58.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14.0,
                  color: black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
