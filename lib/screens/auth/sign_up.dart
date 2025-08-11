import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/Input.dart';
import 'package:my_todo/widgets/auth_body.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "assets/home-bg.png",
                    width: getProportionateScreenWidth(430),
                    height: getProportionateScreenHeight(376.34),
                  ),
                  Positioned(
                    bottom: getProportionateScreenHeight(-80),
                    child: Image.asset("assets/logo.png", fit: BoxFit.cover),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(32)),
              AuthTitle(title: "Create an account"),
              SizedBox(height: getProportionateScreenHeight(20)),
              AuthBody(
                body:
                    "Enter your email address and enter the code that we sent in order to continue.",
              ),
              SizedBox(height: getProportionateScreenHeight(48)),
              Input(label: "Email Address"),
              SizedBox(height: getProportionateScreenHeight(40)),
              Button(text: "Send Link", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(
                text: "Go Back",
                variant: Variant.text,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: getProportionateScreenHeight(92)),
            ],
          ),
        ),
      ),
    );
  }
}
