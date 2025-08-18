import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/icon_container.dart';

class ProfileScreenTitle extends StatelessWidget {
  final Color? iconBgColor;
  final Color? iconColor;
  final IconData icon;
  final String title1;
  final String title2;

  const ProfileScreenTitle({
    super.key,
    this.iconBgColor,
    this.iconColor,
    required this.icon,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(bgColor: iconBgColor, icon: icon, color: iconColor),
        SizedBox(width: getProportionateScreenWidth(12)),
        RichText(
          text: TextSpan(
            text: title1,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: "\n$title2",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
