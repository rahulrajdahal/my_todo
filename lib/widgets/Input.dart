import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class Input extends StatelessWidget {
  final String label;

  const Input({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: getProportionateScreenWidth(398)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: gray[700],
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w500,
              height: getProportionateScreenHeight(1.5),
              letterSpacing: getProportionateScreenWidth(-0.64),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(4)),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              focusColor: gray[100],
              focusedBorder: OutlineInputBorder(
                // gapPadding: getProportionateScreenWidth(12),
                borderSide: BorderSide(
                  color: blue[600]!,
                  width: getProportionateScreenWidth(1),
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(12),
                ),
              ),
              errorBorder: OutlineInputBorder(
                // gapPadding: getProportionateScreenWidth(12),
                borderSide: BorderSide(
                  color: red[600]!,
                  width: getProportionateScreenWidth(1),
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(12),
                ),
              ),
              // contentPadding: EdgeInsets.symmetric(
              //   horizontal: getProportionateScreenWidth(12),
              //   vertical: getProportionateScreenHeight(16),
              // ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                // gapPadding: getProportionateScreenWidth(12),
                borderSide: BorderSide(
                  color: gray[300]!,
                  width: getProportionateScreenWidth(1),
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
