import 'package:flutter/material.dart';
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
        child: Center(
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
                children: [
                  Checkbox(value: true, onChanged: (checked) {}),
                  SizedBox(width: getProportionateScreenWidth(4)),
                  Text("I agree to the Terms of Use."),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(text: "Create Account", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(54)),
            ],
          ),
        ),
      ),
    );
  }
}
