import 'package:flutter/material.dart';

const blueGradient = LinearGradient(
  colors: [
    Color(0XFF802b40),
    Color(0XFF6399ff),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const darkRedGradient = LinearGradient(
  colors: [
    Color(0XFFdd526b),
    Color(0XFFf8b699),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const tealGradient = LinearGradient(
  colors: [
    Color(0XFF199786),
    Color(0XFF74d9d0),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const redGradient = LinearGradient(
  colors: [
    Color(0XFFA7462C),
    Color(0XFFFD8B66),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const purpleGradient = LinearGradient(
  colors: [
    Color(0XFF71489D),
    Color(0XFFAA6DEC),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const yellowGradient = LinearGradient(
  colors: [
    Color(0XFFFFAF44),
    Color(0XFFFDD640),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
class LightColor {
  static const Color background = Color(0XFFFFFFFF);

  static const Color titleTextColor = const Color(0xff5a5d85);
  static const Color subTitleTextColor = const Color(0xff797878);

  static const Color bottonTitleTextColor = const Color(0xffd4d4ea);

  static const Color grey = Color(0xff9D99A7);
  static const Color darkgrey = Color(0xff625f6a);

  static const Color yellow = Color(0xfffbbd5c);

  static const Color orange = Color(0xfff96d5b);
  static const Color darkOrange = Color(0xfff46352);
  static const Color lightOrange = Color(0xfffa8e5c);
  static const Color lightOrange2 = Color(0xfff97d6d);

  static const Color purple = Color(0xff7a81dd);
  static const Color lightpurple = Color(0xff898edf);
  static const Color darkpurple = Color(0xff7178d3);
  static const Color extraDarkPurple = Color(0xff494c79);

  static const Color seeBlue = Color(0xff73d4dd);
  static const Color darkseeBlue = Color(0xff63c4cf);
  static const Color lightseeBlue = Color(0xffb9e6fc);

  static const Color brighter = Color(0xff3754aa);
  static const Color Darker = Color(0xffffffff);
  static const Color black = Color(0xff040405);
  static const Color lightblack = Color(0xff3E404D);
  static const Color lightGrey = Color(0xffDFE7DD);
  static const Color darkBlue = Color(0xff13165A);
  static const Color lightBlue = Color(0xff203387);
}


var bgGradient = new LinearGradient(
  colors: [const Color(0xFF9BFBC1), const Color(0xFFF3F9A7)],
  tileMode: TileMode.clamp,
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  stops: [0.0, 1.0],
);

var btnGradient = new LinearGradient(
  colors: [const Color(0xFF37ecba), const Color(0xFF72afd3)],
  tileMode: TileMode.clamp,
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  stops: [0.0, 1.0],
);

class CustomIcons {
  static const IconData menu = const IconData(0xe901, fontFamily: "CustomFont");
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2 + 30);

    var firstControlPoint = new Offset(size.width / 5, size.height);
    var firstPoint = new Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);
    var secondControlPoint =
    new Offset(size.width - (size.width / 5), size.height);
    var secondPoint = new Offset(size.width, size.height / 2 + 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
