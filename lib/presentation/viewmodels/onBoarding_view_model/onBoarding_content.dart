import 'package:eduction_app_ui/core/utiles/color_pallete.dart';
import 'package:flutter/material.dart';

class OnboardingContentModelView
 {
  final String title;
  final String supTitle;
  final Widget animation;

  OnboardingContentModelView
  (
      {required this.title, required this.supTitle, required this.animation});
}

int height = 300;

List<OnboardingContentModelView
> contents = [
  OnboardingContentModelView
  (
      title: 'Study with Flexaible Schedule',
      supTitle:
          "Live and  interactive classes with class recording aved for revision along wiht 24/7 doubt soving mentors",
      animation: Image.asset("assets/images/on1.png",        height: screenUtil.setHeight(height),
)),
  OnboardingContentModelView
  (
      title: 'Be a Profi !',
      supTitle: "Study smart with the greatest teachers around the world",
      animation: Image.asset("assets/images/Nerd-amico.png",        height: screenUtil.setHeight(height),
)),
  OnboardingContentModelView
  (
      title: 'Find a Dream Job !',
      supTitle:
          "Study with us and  find your dream job in top tier companies and get your money bak spent on the courses",
      animation: Image.asset(
        "assets/images/Business deal-amico.png",
        height: screenUtil.setHeight(height),
      )),
];
