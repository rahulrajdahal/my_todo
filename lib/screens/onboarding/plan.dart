import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class OnboardPlanScreen extends StatelessWidget {
  const OnboardPlanScreen({super.key});

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
              SizedBox(height: getProportionateScreenHeight(48)),
              AuthTitle(title: "How do you plan to use MyTodo App?"),
              SizedBox(height: getProportionateScreenHeight(40)),
              Button(
                text: "Personal Lists",
                onPressed: () {},
                variant: Variant.outline,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(
                text: "Assignments",
                onPressed: () {},
                variant: Variant.outline,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Button(
                text: "Project Tracking",
                onPressed: () {},
                variant: Variant.outline,
              ),
              SizedBox(height: getProportionateScreenHeight(192)),
              Button(text: "Next Step", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(32)),
              Button(
                text: "Next Step",
                onPressed: () {},
                variant: Variant.text,
              ),
              SizedBox(height: getProportionateScreenHeight(48)),
            ],
          ),
        ),
      ),
    );
  }
}
