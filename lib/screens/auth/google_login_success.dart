import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/auth_body.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class GoogleLoginSuccessScreen extends StatelessWidget {
  const GoogleLoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
            SizedBox(height: getProportionateScreenHeight(100)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: blue[100]!,
                  width: getProportionateScreenWidth(16),
                ),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(148),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: blue[200]!,
                    width: getProportionateScreenWidth(15),
                  ),
                  borderRadius: BorderRadius.circular(
                    getProportionateScreenWidth(148),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: blue[300]!,
                      width: getProportionateScreenWidth(11),
                    ),
                    borderRadius: BorderRadius.circular(
                      getProportionateScreenWidth(148),
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/home-bg.png",
                      width: getProportionateScreenWidth(100),
                      height: getProportionateScreenWidth(100),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: getProportionateScreenHeight(20)),
            AuthTitle(title: "Welcome Username"),
            AuthBody(body: "useremail@gamil.com"),
            SizedBox(height: getProportionateScreenHeight(184)),
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
            SizedBox(height: getProportionateScreenHeight(24)),
            Button(text: "Create Account", onPressed: () {}),
            SizedBox(height: getProportionateScreenHeight(80)),
          ],
        ),
      ),
    );
  }
}
