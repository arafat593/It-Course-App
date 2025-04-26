import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';

import '../../../../core/image_path.dart';
import '../widget/my_custom_course_page.dart';

class JavaScript extends StatelessWidget {
  const JavaScript({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomCourseDetailsAppbar(titleText: 'Java Script'),
      body: MyCustomCoursePage(courseTitle: 'Java Script',
        courseSummery: 'JavaScript is the programming language of the Web. JavaScript is easy to learn. This tutorial will teach you JavaScript from basic to advanced.',
        mentorName: 'Noah',
        titleImage: AppImages.javaScriptImage,
        teacherImage: AppImages.noah,),
    );
  }
}
