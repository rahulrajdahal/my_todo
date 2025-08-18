import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class RecentCompletedTodo extends StatelessWidget {
  final String text;
  final String time;

  const RecentCompletedTodo({
    super.key,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: green[200],
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(16)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(21),
        vertical: getProportionateScreenHeight(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check_circle, color: green[600]),
              SizedBox(width: getProportionateScreenWidth(12)),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: getProportionateScreenWidth(184),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w500,
                    color: Color(0xff333333),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(36)),
          Text(
            time,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w500,
              color: Color(0xff727272),
            ),
          ),
        ],
      ),
    );
  }
}
