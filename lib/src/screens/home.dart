import 'package:chukyso/src/commons.dart';
import 'package:chukyso/src/widgets/categories.dart';
import 'package:chukyso/src/widgets/featured_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chukyso/src/widgets/custom_text.dart';

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
          ],
        ),
      ),
    );
  }
}
