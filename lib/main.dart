import 'package:eduction_app_ui/presentation/screens/onBoardng_screen/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const OnboardingScreen(),
      builder: (_, child) {
        return MaterialApp(
            title: "E-Learning",
            debugShowCheckedModeBanner: false,
            home: child,
            
          
        );
        
      },
    );
  }
}
