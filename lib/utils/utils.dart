import 'package:flutter/material.dart';

import 'colors.dart';

const KTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);

const KNormalStyle = TextStyle(
  fontSize: 15,
  height: 1.3,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

//Building the indicators
List<Widget> buildIndicators() {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    duration: const Duration(microseconds: 150),
    height: 8.0,
    width: isActive ? 30.0 : 8.0,
    decoration: BoxDecoration(
      color: isActive ? kOrangeColor : Colors.pink,
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
