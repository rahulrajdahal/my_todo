import 'package:flutter/material.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/auth_body.dart';
import 'package:my_todo/widgets/auth_title.dart';
import 'package:my_todo/widgets/button.dart';

class OnboardTemplatesScreen extends StatelessWidget {
  const OnboardTemplatesScreen({super.key});

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
              AuthTitle(title: "Select Templates"),
              AuthBody(
                body:
                    "Select pre-made templates made by us so that you can supercharge your setup.",
              ),
              SizedBox(height: getProportionateScreenHeight(32)),
              SizedBox(
                width: getProportionateScreenWidth(398),
                height: getProportionateScreenHeight(220),
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.15,
                    mainAxisSpacing: getProportionateScreenHeight(20),
                    crossAxisSpacing: getProportionateScreenWidth(20),
                  ),
                  itemBuilder: (context, index) {
                    return Button(
                      text: "Groceries",
                      onPressed: () {},
                      variant: Variant.outline,
                      icon: Icon(Icons.shopping_cart),
                    );
                  },
                ),
              ),

              SizedBox(height: getProportionateScreenHeight(192)),
              Button(text: "Finish", onPressed: () {}),
              SizedBox(height: getProportionateScreenHeight(32)),
              Button(
                text: "I'll do this later",
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
