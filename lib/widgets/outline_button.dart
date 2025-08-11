import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class AppOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon? icon;

  const AppOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (this.icon != null) {
      return OutlinedButton.icon(
        icon: icon,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              getProportionateScreenWidth(16),
            ),
          ),
          backgroundColor: Colors.white,
          side: BorderSide(
            color: gray[300]!,
            width: getProportionateScreenWidth(1),
            style: BorderStyle.solid,
          ),
          padding: EdgeInsets.all(18),
          maximumSize: Size(
            getProportionateScreenWidth(398),
            getProportionateScreenHeight(60),
          ),
          minimumSize: Size(
            getProportionateScreenWidth(398),
            getProportionateScreenHeight(60),
          ),
        ),
        onPressed: onPressed,
        label: Text(
          text,
          style: TextStyle(
            height: getProportionateScreenHeight(1.2),
            color: gray[500],
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
            letterSpacing: getProportionateScreenWidth(-0.8),
          ),
        ),
      );
    }

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(
            getProportionateScreenWidth(16),
          ),
        ),
        backgroundColor: Colors.white,
        side: BorderSide(
          color: gray[300]!,
          width: getProportionateScreenWidth(1),
          style: BorderStyle.solid,
        ),
        padding: EdgeInsets.all(18),
        maximumSize: Size(
          getProportionateScreenWidth(398),
          getProportionateScreenHeight(60),
        ),
        minimumSize: Size(
          getProportionateScreenWidth(398),
          getProportionateScreenHeight(60),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          height: getProportionateScreenHeight(1.2),
          color: gray[500],
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.w600,
          letterSpacing: getProportionateScreenWidth(-0.8),
        ),
      ),
    );
  }
}
