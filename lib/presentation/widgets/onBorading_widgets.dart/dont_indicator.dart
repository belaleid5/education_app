
import 'package:eduction_app_ui/core/utiles/color.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5,bottom: 10),
      height: 10,
      width: isActive ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? kPrimaryColor : kPrimaryLightColor.withOpacity(0.45),
      ),
    );
  }
}
