import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theflutterway_covid19/info_screen.dart';
import 'package:theflutterway_covid19/main.dart';

import '../constant.dart';
import '../home_screen.dart';
import 'my_clipper.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;

  const MyHeader({
    Key key,
    this.image,
    this.textTop,
    this.textBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(
          left: 40,
          top: 50,
          right: 20,
        ),
        height: 350,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return InfoScreen();
                    }),
                  );
                },
                child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: Stack(
              children: [
                SvgPicture.asset(
                  image,
                  width: 230,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                  top: 20,
                  left: 150,
                  child: Text(
                    '$textTop\n$textBottom',
                    style: kHeadingTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
