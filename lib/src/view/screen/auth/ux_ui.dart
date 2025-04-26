import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';

import '../../../../core/image_path.dart';
import '../widget/my_custom_course_page.dart';

class UxUi extends StatelessWidget {
  const UxUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomCourseDetailsAppbar(titleText: 'UX / UI'),
      body: MyCustomCoursePage(courseTitle: 'UX / UI',
        courseSummery: "UX (User Experience) and UI (User Interface) are distinct but related fields within design, both focusing on the user's interaction with digital products like websites and apps.",
        mentorName: 'Sara',
        titleImage: AppImages.uxUiImage,
        teacherImage: AppImages.sara,),
    );
  }
}
