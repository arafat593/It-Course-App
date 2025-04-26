import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_course_details_appbar.dart';

import '../../../../core/image_path.dart';
import '../widget/my_custom_course_page.dart';

class NodeJs extends StatelessWidget {
  const NodeJs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomCourseDetailsAppbar(titleText: 'Node Js'),
      body: MyCustomCoursePage(courseTitle: 'Node Js',
        courseSummery: "Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine.",
        mentorName: 'Liam',
        titleImage: AppImages.nodeJsImage,
        teacherImage: AppImages.liam,),
    );
  }
}
