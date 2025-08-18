import "dart:math" as math;

import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/app_navbar.dart';
import 'package:my_todo/widgets/icon_container.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(24),
          vertical: getProportionateScreenHeight(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconContainer(
                  bgColor: red[200],
                  icon: Icons.help_center_outlined,
                  color: red[600],
                ),
                SizedBox(width: getProportionateScreenWidth(12)),
                RichText(
                  text: TextSpan(
                    text: "Help",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\nCenter",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            Transform.rotate(
              angle: 180 * math.pi / 180,
              child: Icon(
                Icons.format_quote_rounded,
                size: getProportionateScreenWidth(32),
                color: Colors.black12,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              "You are responsible to yourself, to love yourself, to care for yourself, and to help yourself",
              style: TextStyle(
                color: Color(0xff727272),
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.w600,
                height: getProportionateScreenHeight(1.33),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Text(
              "-Akiroq Brost",
              style: TextStyle(
                color: Color(0xff727272),
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w500,
                height: getProportionateScreenHeight(1.3125),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
