
import 'package:eduction_app_ui/presentation/viewmodels/onBoarding_view_model/onBoarding_content.dart';
import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/custom_text.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {super.key, required this.height, required this.index});
  final double height;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(height: 20),
          contents[index].animation,
          SizedBox(height: (height >= 840) ? 60 : 80),
          CustomText(index: index),
          const SizedBox(height: 16),

          CustomText(index: index,
          title:contents[index].supTitle,
            color: Colors.grey.shade600,
              fontWeight: FontWeight.w300,
              fontSize: 18,
          ),

        
        ],
      ),
    );
  }
}
