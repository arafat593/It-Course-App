import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/auth/content_file.dart';
import 'package:it_course/src/view/screen/auth/profile.dart';
import 'package:it_course/src/view/screen/auth/react.dart';
import 'package:it_course/src/view/screen/auth/splash_screen.dart';
import 'package:it_course/src/view/screen/widget/my_custom_bottom_navigator.dart';

class MainItCourse extends StatelessWidget {
  const MainItCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IT Course",
      home: SplashScreen(),
    );
  }
}
