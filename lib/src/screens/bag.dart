import 'package:chukyso/src/helpers/style.dart';
import 'package:chukyso/src/models/products.dart';
import 'package:chukyso/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      name: "NewCA mới 1 năm",
      price: 1825000,
      vendor: "NewTel",
      rating: 4.7,
      wishList: true,
      image: "newca-product.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: white,
        elevation: 0.0,
        centerTitle: true,
        title: CustomText(
          text: "Giỏ hàng",
          size: 22.0,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/shopping-bag.png",
                    width: 22.0,
                    height: 22.0,
                  ),
                ),
                Positioned(
                  right: 7.0,
                  bottom: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(2.0, 1.0),
                            blurRadius: 3.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: CustomText(
                        text: "2",
                        color: red,
                        size: 16.0,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120.0,
              // width: MediaQuery.of(context).size.width - 10.0,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red[50],
                    offset: Offset(3.0, 5.0),
                    blurRadius: 30.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/${product.image}",
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: product.name + "\n",
                              style: TextStyle(color: black, fontSize: 20.0),
                            ),
                            TextSpan(
                              text: product.price.toString() + "\đ" + "\n",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      IconButton(icon: Icon(Icons.delete), onPressed: null),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
