import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.bgColor,
    required this.icon,
    required this.color,
  });

  final Color? bgColor;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(18)),
      ),
      child: Icon(icon, color: color, size: getProportionateScreenWidth(18)),
    );
  }
}
