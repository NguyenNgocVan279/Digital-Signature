import 'package:flutter/material.dart';

import 'custom_text.dart';

class BottomNavIcons extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;
  BottomNavIcons({@required this.name, @required this.image, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/$image',
              width: 22.0,
              height: 22.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomText(
              text: name,
              size: 14.0,
            ),
          ],
        ),
      ),
    );
  }
}
