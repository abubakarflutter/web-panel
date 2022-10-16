import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fWeight;
  final double? fSize;

  const CustomTextWidget(
      {Key? key, required this.text, this.textColor, this.fWeight, this.fSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor ?? kTextBlackColor,
          fontSize: fSize ?? 16,
          fontWeight: fWeight ?? FontWeight.normal),
    );
  }
}
