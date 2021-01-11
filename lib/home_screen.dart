import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theflutterway_covid19/widgets/couter2.dart';
import 'package:theflutterway_covid19/widgets/my_header.dart';

import 'constant.dart';
import 'widgets/counter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // if (width > 1200) {
    //   return Text('여기서는 지원 안됨');
    // }
    // items: ['Indonesia', 'Bangladesh', 'United States']
    //     .map<DropdownMenuItem<String>>((String value) {
    //   return DropdownMenuItem<String>(
    //       value: value, child: Text(value));
    // }).toList(),

    // var items =
    //     ['Indonesia', 'Bangladesh', 'United States'].map((String value) {
    //   return DropdownMenuItem<String>(value: value, child: Text(value));
    // }).toList();

    List<DropdownMenuItem<String>> itemList = [];

    itemList.add(
      DropdownMenuItem<String>(value: 'Indonesia', child: Text('222Indonesia')),
    );
    itemList.add(
      DropdownMenuItem<String>(value: 'Bangladesh', child: Text('Bangladesh')),
    );
    itemList.add(
      DropdownMenuItem<String>(
          value: 'United States', child: Text('United States')),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeader(
                image: 'assets/icons/Drcorona.svg',
                textTop: "All you need",
                textBottom: "is stay at home.",
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 60,
                width: width * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Color(0xFFe5e5e5),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/maps-and-flags.svg',
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                        value: 'Indonesia',
                        // items: itemList,
                        items: ['Indonesia', 'Bangladesh', 'United States']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Case update\n",
                                style: kTitleTextstyle,
                              ),
                              TextSpan(
                                  text: "Newest update March 28",
                                  style: TextStyle(
                                    color: kTextLightColor,
                                  ))
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See details",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30,
                              color: kShadowColor,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Counter(
                            color: kInfectedColor,
                            number: 1046,
                            title: 'Infected',
                          ),
                          Counter(
                            color: kDeathColor,
                            number: 87,
                            title: 'Deaths',
                          ),
                          Counter(
                            color: kRecovercolor,
                            number: 46,
                            title: 'Recovered',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Spread of Virus',
                          style: kTitleTextstyle,
                        ),
                        Spacer(),
                        Text(
                          'See details',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(20),
                      height: 178,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 30,
                              color: kShadowColor,
                            )
                          ]),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
