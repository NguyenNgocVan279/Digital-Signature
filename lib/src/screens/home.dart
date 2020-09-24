import 'package:chukyso/src/helpers/screen_navigation.dart';
import 'package:chukyso/src/screens/bag.dart';
import 'package:chukyso/src/widgets/categories.dart';
import 'package:chukyso/src/widgets/featured_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chukyso/src/helpers/style.dart';
import 'package:chukyso/src/widgets/custom_text.dart';
import 'package:chukyso/src/widgets/small_floating_button.dart';
import 'package:chukyso/src/widgets/bottom_navigation_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'Bạn muốn tìm loại sản phẩm nào?',
                    size: 18.0,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12.0,
                      right: 12.0,
                      child: Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1.0, 1.0),
                    blurRadius: 4.0,
                  ),
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tìm loại Chữ ký số và Nhà cung cấp',
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Categories(),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Nổi bật",
                size: 18,
                color: grey,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Phổ biến",
                size: 18,
                color: grey,
              ),
            ),
            // START HERE
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("images/chu-ky-so-viettel.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SmallButton(Icons.favorite),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow[900],
                                      size: 20.0,
                                    ),
                                  ),
                                  Text("4.5"),
                                ],
                              ),
                            ),
                          )
                        ]),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                          ),
                          //Box decoration takes a gradient
                          gradient: LinearGradient(
                            //Where the linear gradient begins and ends
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            //Add one stop for each color. Stops should increase
                            colors: [
                              //Colors are easy thanks to Flutter's Colors class
                              Colors.pinkAccent.withOpacity(0.8),
                              Colors.pinkAccent.withOpacity(0.7),
                              Colors.pinkAccent.withOpacity(0.6),
                              Colors.pinkAccent.withOpacity(0.6),
                              Colors.pinkAccent.withOpacity(0.4),
                              Colors.pinkAccent.withOpacity(0.1),
                              Colors.pinkAccent.withOpacity(0.05),
                              Colors.pinkAccent.withOpacity(0.025),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Đăng ký mới \n",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "bởi",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Viettel-CA",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: white,
                                    ),
                                  ),
                                ],
                                style: TextStyle(color: black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\3.109.000đ \n",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: white,
                                    ),
                                  ),
                                ],
                                style: TextStyle(color: black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
            //ENDS HERE
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 62.0,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomNavIcons(
              image: "home.png",
              name: "Home",
            ),
            BottomNavIcons(
              onTap: () {
                changeScreen(context, ShoppingBag());
              },
              image: "shopping-bag.png",
              name: "Giỏ hàng",
            ),
            BottomNavIcons(
              image: "user.png",
              name: "Tôi",
            ),
          ],
        ),
      ),
    );
  }
}
