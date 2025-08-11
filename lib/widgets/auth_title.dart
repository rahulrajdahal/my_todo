import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class AuthTitle extends StatelessWidget {
  final String title;

  const AuthTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: gray[900],
        fontSize: getProportionateScreenWidth(32),
        fontWeight: FontWeight.w700,
        height: getProportionateScreenHeight(1.25),
        letterSpacing: getProportionateScreenWidth(-1.28),
      ),
    );
  }
}
