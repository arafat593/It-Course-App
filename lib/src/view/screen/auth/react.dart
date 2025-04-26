import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:it_course/core/color.dart';
import 'package:it_course/core/image_path.dart';
import 'package:it_course/src/view/screen/widget/my_custom_bottom_navigator.dart';
import 'package:it_course/src/view/screen/widget/my_custom_button.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_page.dart';

class React extends StatefulWidget {
  React({super.key,});

  @override
  State<React> createState() => _ReactState();
}

class _ReactState extends State<React> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyCustomCourseDetailsAppbar(titleText: 'React'),
        body: MyCustomCoursePage(courseTitle: 'React',
          courseSummery: 'Basic Guideline & tricks for now how to become a React developer easily',
          mentorName: 'John',
          titleImage: AppImages.reactImage,
          teacherImage: AppImages.john,)
      // bottomNavigationBar: MyCustomBottomNavigator(),
    );
  }
}