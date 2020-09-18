import 'package:flutter/material.dart';
import 'package:chukyso/src/commons.dart';
import 'package:chukyso/src/widgets/custom_text.dart';
import 'package:chukyso/src/models/products.dart';

List<Product> productsList = [
  Product(
      name: "NewCA mới 1 năm",
      price: 1825000,
      vendor: "NewTel",
      rating: 4.7,
      wishList: true,
      image: "newca-product.jpg"),
  Product(
      name: "NewCA mới 2 năm",
      price: 2742000,
      vendor: "NewTel",
      rating: 4.5,
      wishList: true,
      image: "newca-product.jpg"),
  Product(
      name: "NewCA mới 3 năm",
      price: 3109000,
      vendor: "NewTel",
      rating: 4.9,
      wishList: true,
      image: "newca-product.jpg"),
  Product(
      name: "SmartSign mới 1 năm",
      price: 1828000,
      vendor: "Vina-CA",
      rating: 4.5,
      wishList: true,
      image: "vina-product.jpg"),
  Product(
      name: "SmartSign mới 2 năm",
      price: 2743000,
      vendor: "Vina-CA",
      rating: 4.7,
      wishList: true,
      image: "vina-product.jpg"),
  Product(
      name: "SmartSign mới 3 năm",
      price: 3108000,
      vendor: "Vina-CA",
      rating: 4.8,
      wishList: true,
      image: "vina-product.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240.0,
                width: 220.0,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red[50],
                      offset: Offset(15.0, 5.0),
                      blurRadius: 30.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/${productsList[index].image}",
                      height: 140.0,
                      width: 140.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 4.0,
                                ),
                              ],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: productsList[index].wishList
                                    ? Icon(
                                        Icons.favorite,
                                        size: 16.0,
                                        color: red,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        size: 16.0,
                                        color: red,
                                      )),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                size: 14.0,
                                color: grey,
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 12.0,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 12.0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                            text: "${productsList[index].price}\đ",
                            size: 15.0,
                            weight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
