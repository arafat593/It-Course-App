import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_app_bar.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';

import '../../../../core/image_path.dart';
import '../widget/my_custom_course_page.dart';

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomCourseDetailsAppbar(titleText: 'Flutter'),
      body: MyCustomCoursePage(courseTitle: 'Flutter',
        courseSummery: 'Flutter is a good programming',
        mentorName: 'Walter',
        titleImage: AppImages.flutterImage,
        teacherImage: AppImages.walter,),
    );
  }
}
