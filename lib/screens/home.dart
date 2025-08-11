import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              SizedBox(
                width: getProportionateScreenWidth(266),
                child: Text(
                  "Welcome to My Todo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: getProportionateScreenHeight(1),
                    color: gray[900],
                    fontSize: getProportionateScreenWidth(48),
                    fontWeight: FontWeight.w700,
                    letterSpacing: getProportionateScreenWidth(-1.92),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SizedBox(
                width: getProportionateScreenWidth(334),
                child: Text(
                  "My Todo helps you stay organized with your tasks and reminders",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: getProportionateScreenHeight(1.2),
                    color: gray[500],
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w400,
                    letterSpacing: getProportionateScreenWidth(-0.8),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(128)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      getProportionateScreenWidth(16),
                    ),
                  ),
                  backgroundColor: blue[600],
                  padding: EdgeInsets.all(18),
                  maximumSize: Size(
                    getProportionateScreenWidth(398),
                    getProportionateScreenHeight(60),
                  ),
                  minimumSize: Size(
                    getProportionateScreenWidth(398),
                    getProportionateScreenHeight(60),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text(
                  "Try it out",
                  style: TextStyle(
                    height: getProportionateScreenHeight(1.2),
                    color: gray[50],
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                    letterSpacing: getProportionateScreenWidth(-0.8),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      getProportionateScreenWidth(16),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    color: gray[300]!,
                    width: getProportionateScreenWidth(1),
                    style: BorderStyle.solid,
                  ),
                  padding: EdgeInsets.all(18),
                  maximumSize: Size(
                    getProportionateScreenWidth(398),
                    getProportionateScreenHeight(60),
                  ),
                  minimumSize: Size(
                    getProportionateScreenWidth(398),
                    getProportionateScreenHeight(60),
                  ),
                ),
                onPressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else {
                    exit(0);
                  }
                },
                child: Text(
                  "Quit App",
                  style: TextStyle(
                    height: getProportionateScreenHeight(1.2),
                    color: gray[500],
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600,
                    letterSpacing: getProportionateScreenWidth(-0.8),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(60)),
            ],
          ),
        ),
      ),
    );
  }
}
