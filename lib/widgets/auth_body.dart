import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class AuthBody extends StatelessWidget {
  final String body;

  const AuthBody({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: getProportionateScreenWidth(334)),
      child: Text(
        body,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: gray[500],
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.w400,
          height: getProportionateScreenHeight(1.56),
          letterSpacing: getProportionateScreenWidth(-0.64),
        ),
      ),
    );
  }
}
