import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/app_navbar.dart';
import 'package:my_todo/widgets/app_switch.dart';
import 'package:my_todo/widgets/profile_screen_title.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

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
            ProfileScreenTitle(
              title1: "Notification",
              title2: "Settings",
              icon: Icons.notifications_outlined,
              iconBgColor: yellow[200],
              iconColor: yellow[600],
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            AppSwitch(text: "Push Notifications"),
            SizedBox(height: getProportionateScreenHeight(33)),
            Text(
              "Receive Notifications when...",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.w600,
                color: Color(0xffaaaaaa),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(12)),
            AppSwitch(text: "My todo is unchecked for more than 3 days"),
            SizedBox(height: getProportionateScreenHeight(16)),
            AppSwitch(text: "When I haven't opened the app in 3 days"),
          ],
        ),
      ),
    );
  }
}
