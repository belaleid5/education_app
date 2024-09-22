import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/onBoarding_content.dart';
import 'package:eduction_app_ui/presentation/widgets/onBorading_widgets.dart/onBoarding_navigations.dart';
import 'package:flutter/material.dart';
import 'package:eduction_app_ui/presentation/viewmodels/onBoarding_view_model/onBoarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (context, index) => 
                OnboardingContent(
                  height: height,
                  index: index,
                ),
              ),
            ),
            
            OnboardingNavigation(
              currentPage: _currentPage,
              pageController: _pageController,
              isLastPage: _currentPage == contents.length - 1,
            ),
          ],
        ),
      ),
    );
  }
}




