import 'package:eduction_app_ui/presentation/viewmodels/onBoarding_view_model/onBoarding_content.dart';
import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/custom_get_started.dart';
import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/custom_jump_tp%20_page.dart';
import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/dont_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingNavigation extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  final bool isLastPage;

  const OnboardingNavigation({
    super.key,
    required this.currentPage,
    required this.pageController,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
                (index) => DotIndicator(isActive: index == currentPage)),
          ),
          isLastPage
              ? const CustomGetStarted()
              : CustomJumpToPage(pageController: pageController),
        ],
      ),
    );
  }
}
