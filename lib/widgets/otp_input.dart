import 'package:flutter/material.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/utils/size_config.dart';

class OtpInput extends StatelessWidget {
  late final List<FocusNode> _focusNodes;

  OtpInput({super.key}) : _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(6, (index) {
          return Input(
            focusNode: _focusNodes[index],
            onChanged: (value) {
              if (value.length == 1 && index < _focusNodes.length - 1) {
                _focusNodes[index + 1].requestFocus();
              } else if (value.isEmpty && index > 0) {
                _focusNodes[index - 1].requestFocus();
              }
            },
          );
        }),
      ),
    );
  }
}

class Input extends StatelessWidget {
  final FocusNode focusNode;
  final void Function(String)? onChanged;
  const Input({super.key, required this.focusNode, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      maxLength: 1,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      onChanged: onChanged,
      decoration: InputDecoration(
        counterText: '',
        constraints: BoxConstraints(
          maxWidth: getProportionateScreenWidth(60),
          maxHeight: getProportionateScreenWidth(60),
        ),
        fillColor: Colors.white,
        focusColor: gray[100],
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: blue[600]!,
            width: getProportionateScreenWidth(1),
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: red[600]!,
            width: getProportionateScreenWidth(1),
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: gray[300]!,
            width: getProportionateScreenWidth(1),
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(12)),
        ),
      ),
    );
  }
}
