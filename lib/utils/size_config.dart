import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 430;
  static double screenHeight = 932;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    orientation = Orientation.portrait;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  final double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 932) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  final double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 430) * screenWidth;
}
