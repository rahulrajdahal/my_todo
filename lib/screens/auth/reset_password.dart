import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/Input.dart';
import 'package:my_todo/widgets/button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Reset Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: gray[900],
                  fontSize: getProportionateScreenWidth(32),
                  fontWeight: FontWeight.w700,
                  height: getProportionateScreenHeight(1.25),
                  letterSpacing: getProportionateScreenWidth(-1.28),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(8)),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: getProportionateScreenWidth(334),
                ),
                child: Text(
                  "Create a strong password for your account and don’t lose it!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: gray[500],
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w400,
                    height: getProportionateScreenHeight(1.56),
                    letterSpacing: getProportionateScreenWidth(-0.64),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(48)),
              Input(label: "Create New Password"),
              SizedBox(height: getProportionateScreenHeight(40)),
              Input(label: "Confirm New Password"),
              SizedBox(height: getProportionateScreenHeight(40)),
              Button(text: "Reset Password", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(28)),
              Button(
                text: "Go Back",
                variant: Variant.text,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: getProportionateScreenHeight(42)),
            ],
          ),
        ),
      ),
    );
  }
}
