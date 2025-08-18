import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/icon_container.dart';

class ProfileButton extends StatelessWidget {
  final Color? iconColor;
  final Color? iconBgColor;
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const ProfileButton({
    super.key,
    required this.icon,
    required this.text,
    required this.iconBgColor,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
        overlayColor: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconContainer(bgColor: iconBgColor, icon: icon, color: iconColor),
              SizedBox(width: getProportionateScreenWidth(12)),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward,
            color: Color(0xff333333),
            size: getProportionateScreenWidth(16),
          ),
        ],
      ),
    );
  }
}
