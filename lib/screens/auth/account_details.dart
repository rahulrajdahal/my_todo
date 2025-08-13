import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/Input.dart';
import 'package:my_todo/widgets/auth_body.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
            SizedBox(height: getProportionateScreenHeight(20)),
            AuthTitle(title: "Account Details"),
            SizedBox(height: getProportionateScreenHeight(8)),
            AuthBody(
              body:
                  "Enter the details below in order to continue using My ToDo.",
            ),
            SizedBox(height: getProportionateScreenHeight(48)),
            Input(label: "Full Name"),
            SizedBox(height: getProportionateScreenHeight(40)),
            Input(label: "Create Password"),
            SizedBox(height: getProportionateScreenHeight(32)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(value: true, onChanged: (checked) {}),
                SizedBox(width: getProportionateScreenWidth(4)),
                RichText(
                  text: TextSpan(
                    text: "I agree to the ",
                    style: TextStyle(
                      color: gray[500],
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.w400,
                      height: getProportionateScreenHeight(24 / 16),
                      letterSpacing: getProportionateScreenWidth(-0.64),
                    ),
                    children: [
                      TextSpan(
                        text: "Terms of Use.",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: gray[900],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Button(text: "Create Account", onPressed: () {}),
            SizedBox(height: getProportionateScreenHeight(54)),
          ],
        ),
      ),
    );
  }
}
