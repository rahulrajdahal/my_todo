import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class AppSwitch extends StatelessWidget {
  final String text;

  const AppSwitch({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: getProportionateScreenWidth(172),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        Switch(
          value: true,
          onChanged: (newValue) {},
          inactiveTrackColor: gray[400],
          activeTrackColor: blue[200],
          activeColor: blue[600],
          inactiveThumbColor: gray[400],
        ),
      ],
    );
  }
}
