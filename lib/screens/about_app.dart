import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/app_navbar.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavbar(title: "About App"),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(58),
              0,
              getProportionateScreenWidth(57),
              getProportionateScreenHeight(166),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png'),
                SizedBox(height: getProportionateScreenHeight(40)),
                Text(
                  "My Todo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: getProportionateScreenWidth(260),
                  ),
                  child: Text(
                    "MyTodo is a simple todo application that lets you organize your tasks into lists and become more productive.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400,
                      height: getProportionateScreenHeight(1.428),
                      color: Color(0xff727272),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(60)),
                Text(
                  "Developed by",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(6)),
                Text(
                  "MesiterNator Systems",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: blue[600],
                    fontWeight: FontWeight.w400,
                    fontSize: getProportionateScreenWidth(14),
                    height: getProportionateScreenHeight(1.428),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(40)),
                Text(
                  "Team",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(6)),
                Text(
                  "Aakash Raj Dahal (Designer)\nRahul Raj Dahal(Mobile Developer)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w400,
                    height: getProportionateScreenHeight(1.428),
                    color: Color(0xff727272),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
