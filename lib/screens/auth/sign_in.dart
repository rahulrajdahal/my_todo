import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/Input.dart';
import 'package:my_todo/widgets/button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: gray[900],
                  fontSize: getProportionateScreenWidth(32),
                  fontWeight: FontWeight.w700,
                  height: getProportionateScreenHeight(1.25),
                  letterSpacing: getProportionateScreenWidth(-1.28),
                ),
              ),

              Input(label: "Email Address"),
              SizedBox(height: getProportionateScreenHeight(40)),
              Input(label: "Password"),
              SizedBox(height: getProportionateScreenHeight(16)),
              Button(text: "Log In", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(
                text: "Sign In With Google",
                variant: Variant.outline,
                onPressed: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(
                text: "Create Account",
                onPressed: () {},
                variant: Variant.text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
