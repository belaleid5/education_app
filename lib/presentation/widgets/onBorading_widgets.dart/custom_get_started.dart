import 'package:animate_do/animate_do.dart';
import 'package:eduction_app_ui/core/utiles/color.dart';
import 'package:flutter/material.dart';

class CustomGetStarted extends StatelessWidget {
  const CustomGetStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 150),
      child: ElevatedButton(
        onPressed: () {
          // Handle Get Started
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryLightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
