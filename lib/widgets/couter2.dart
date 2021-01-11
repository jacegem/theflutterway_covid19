import 'package:flutter/material.dart';

import '../constant.dart';

class Counter2 extends StatefulWidget {
  final int number;
  final Color color;
  final String title;

  const Counter2({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  _Counter2State createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  int number;
  Color color;
  String title;

  @override
  void initState() {
    super.initState();
    number = widget.number;
    color = widget.color;
    title = widget.title;

    // title = "수정한22222" + title;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$number',
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          '$title',
          style: kSubTextStyle,
        )
      ],
    );
  }
}
