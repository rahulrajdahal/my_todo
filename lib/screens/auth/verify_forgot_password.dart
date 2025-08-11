import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';
import 'package:my_todo/widgets/otp_input.dart';

class VerifyForgotPasswordScreen extends StatelessWidget {
  const VerifyForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(height: getProportionateScreenHeight(20)),
              AuthTitle(title: "Enter Code"),
              SizedBox(height: getProportionateScreenHeight(8)),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: getProportionateScreenWidth(334),
                ),
                child: Text(
                  "Enter the code that was sent to the email address you provided.",
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
              OtpInput(),
              SizedBox(height: getProportionateScreenHeight(40)),
              Button(text: "Verify Code", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(16)),
              Button(
                text: "Resend in: 00:17",
                variant: Variant.text,
                onPressed: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(140)),
              Button(
                text: "Go Back",
                variant: Variant.text,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: getProportionateScreenHeight(78)),
            ],
          ),
        ),
      ),
    );
  }
}
