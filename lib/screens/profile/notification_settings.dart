import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/app_navbar.dart';
import 'package:my_todo/widgets/icon_container.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconContainer(
                  bgColor: yellow[200],
                  icon: Icons.notifications_outlined,
                  color: yellow[600],
                ),
                SizedBox(width: getProportionateScreenWidth(12)),
                RichText(
                  text: TextSpan(
                    text: "Notification",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\nSettings",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
