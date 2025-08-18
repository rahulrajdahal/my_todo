import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/recent_completed_todo.dart';
import 'package:my_todo/widgets/remaining_todo.dart';

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: blue[600],
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(21)),
        ),
        child: Icon(Icons.add, color: Colors.white),
      ),
      backgroundColor: Color(0xfff3f3f3),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(24),
            vertical: getProportionateScreenHeight(33),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecentCompletedTodo(
                text:
                    "Complete Flutter UI App challenge and upload it on Github",
                time: "1h 25m",
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              RichText(
                text: TextSpan(
                  text: "Remaining Tasks ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "(24)",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(12)),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RemainingTodo(
                    text: "Complete all the college assignments ",
                    time: "May ${(index + 1) % 30 + 1}",
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: getProportionateScreenHeight(16)),
                itemCount: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
