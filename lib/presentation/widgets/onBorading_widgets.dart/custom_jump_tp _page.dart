import 'package:eduction_app_ui/core/utiles/color.dart';
import 'package:eduction_app_ui/presentation/viewmodels/onBoarding_view_model/onBoarding_content.dart';
import 'package:flutter/material.dart';

class CustomJumpToPage extends StatelessWidget {
  const CustomJumpToPage({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => pageController.jumpToPage(contents.length - 1),
          child: const Text("SKIP", style: TextStyle(color: kPrimaryColor)),
        ),
        ElevatedButton(
          onPressed: () => pageController.nextPage(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white),
        ),
      ],
    );
  }
}
