import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class ResetPasswordSuccessScreen extends StatelessWidget {
  const ResetPasswordSuccessScreen({super.key});

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
              AuthTitle(title: "Success"),
              SizedBox(height: getProportionateScreenHeight(8)),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: getProportionateScreenWidth(334),
                ),
                child: Text(
                  "Awesome! Your new password has been created. Please use it the next time you log in.",
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
              SizedBox(height: getProportionateScreenHeight(40)),
              Button(text: "Go to Login", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
