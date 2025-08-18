import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';
import 'package:my_todo/widgets/button.dart';
import 'package:my_todo/widgets/recent_completed_todo.dart';
import 'package:my_todo/widgets/remaining_todo.dart';

Future<void> _addTodoDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Add a ",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "New Todo",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        content: TextField(
          maxLines: 3,
          decoration: InputDecoration(
            hoverColor: Color(0xfff3f3f3),
            fillColor: Color(0xfff3f3f3),
            focusColor: Color(0xfff3f3f3),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.none,
                color: Color(0xfff3f3f3),
              ),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(19),
              ),
            ),
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Button(
            onPressed: () {
              Navigator.of(context).pop();
            },
            text: "Cancel",
            variant: Variant.text,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.check)),
        ],
      );
    },
  );
}

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text(
          "My Todo",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(24),
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTodoDialog(context),
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
