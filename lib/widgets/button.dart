import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

enum Variant { fill, outline, text }

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Variant variant;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = Variant.fill,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case Variant.fill:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(
                getProportionateScreenWidth(16),
              ),
            ),
            backgroundColor: blue[600],
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
              color: gray[50],
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w600,
              letterSpacing: getProportionateScreenWidth(-0.8),
            ),
          ),
        );

      case Variant.outline:
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

      case Variant.text:
        return TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              height: getProportionateScreenHeight(1.2),
              color: blue[600],
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w600,
              letterSpacing: getProportionateScreenWidth(-0.8),
            ),
          ),
        );
    }
  }
}
