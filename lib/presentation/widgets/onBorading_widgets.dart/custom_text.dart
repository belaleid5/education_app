import 'package:eduction_app_ui/presentation/viewmodels/onBoarding_view_model/onBoarding_content.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.index, this.title, this.color, this.fontWeight, this.fontSize,
  });

  final int index;
  final String? title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
     title ?? contents[index].title,
      textAlign: TextAlign.center,
      style:  TextStyle(
        color:color?? Colors.black,
        fontWeight:fontWeight ?? FontWeight.bold,
        fontSize: fontSize ?? 21,
      ),
    );
  }
}
