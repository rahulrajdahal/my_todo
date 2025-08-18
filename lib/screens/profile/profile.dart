import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/app_navbar.dart';
import 'package:my_todo/widgets/profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavbar(title: "Your Profile"),
      body: Scaffold(
        backgroundColor: Color(0xfff3f3f3),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(24),
            vertical: getProportionateScreenHeight(40),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: getProportionateScreenWidth(137.2),
                    maxHeight: getProportionateScreenWidth(137.2),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: getProportionateScreenWidth(11.5),
                    ),
                    borderRadius: BorderRadius.circular(
                      getProportionateScreenWidth(35),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: red[200]!,
                        width: getProportionateScreenWidth(11.5),
                      ),
                      borderRadius: BorderRadius.circular(
                        getProportionateScreenWidth(40),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(
                        getProportionateScreenWidth(20),
                      ),
                      child: Image.asset(
                        "assets/logo.png",
                        width: getProportionateScreenWidth(104),
                        height: getProportionateScreenHeight(103),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                Text(
                  "User Full Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                Text(
                  "User Full Name",
                  style: TextStyle(
                    color: blue[600],
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(60)),
                Column(
                  children: [
                    ProfileButton(
                      iconBgColor: blue[200],
                      iconColor: blue[600],
                      icon: Icons.archive_outlined,
                      text: "Your Archive",
                      onPressed: () {
                        Navigator.pushNamed(context, '/archive');
                      },
                    ),
                    SizedBox(height: getProportionateScreenHeight(24)),
                    ProfileButton(
                      iconBgColor: yellow[200],
                      iconColor: yellow[600],
                      icon: Icons.notifications_outlined,
                      text: "Notification Settings",
                      onPressed: () {
                        Navigator.pushNamed(context, '/notification-settings');
                      },
                    ),
                    SizedBox(height: getProportionateScreenHeight(24)),
                    ProfileButton(
                      iconBgColor: red[200],
                      iconColor: red[600],
                      icon: Icons.help_center_outlined,
                      text: "Help Center",
                      onPressed: () {
                        Navigator.pushNamed(context, '/help-center');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
