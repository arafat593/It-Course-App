import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';

import '../../../../core/image_path.dart';
import '../widget/my_custom_course_page.dart';

class Python extends StatelessWidget {
  const Python({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomCourseDetailsAppbar(titleText: 'Python'),
      body: MyCustomCoursePage(courseTitle: 'Python',
        courseSummery: "Learn Python. Python is a popular programming language. Python can be used on a server to create web applications. Start learning Python now.",
        mentorName: 'Emma',
        titleImage: AppImages.pythonImage,
        teacherImage: AppImages.emma,),
    );
  }
}
