import 'package:flutter/material.dart';
import 'package:it_course/core/color.dart';
import 'package:it_course/core/image_path.dart';
import 'package:it_course/src/view/screen/auth/home_screen.dart';
import 'package:it_course/src/view/screen/widget/my_custom_bottom_navigator.dart';
import 'package:it_course/src/view/screen/widget/my_custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150),
              Image.asset(AppImages.splashImage, height: 200, width: 300),
              SizedBox(height: 30),
              Text(
                'Grow Your Soft Skill\nAnd\n Be More Creative',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              MyCustomButton(
                onTap: () {
                  print('Start');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCustomBottomNavigator()),
                  );
                },
                buttonText: 'Get Started',
                color: Colors.white,
                textColor: AppColor.appColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
