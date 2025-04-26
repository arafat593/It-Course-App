import 'package:flutter/material.dart';
import 'package:it_course/core/color.dart';

class MyCustomGridview extends StatefulWidget {
  MyCustomGridview({super.key});

  @override
  State<MyCustomGridview> createState() => _MyCustomGridviewState();
}

class _MyCustomGridviewState extends State<MyCustomGridview> {
  List<Map<String, dynamic>> categoryItem = [
    {
      'title': 'Category',
      'icon': Icon(Icons.menu_outlined, size: 30, color: Colors.white),
    },
    {
      'title': 'Course',
      'icon': Icon(
        Icons.video_camera_back_outlined,
        size: 30,
        color: Colors.white,
      ),
    },
    {
      'title': 'Reward',
      'icon': Icon(Icons.card_giftcard_outlined, size: 30, color: Colors.white),
    },
    {
      'title': 'Free Courses',
      'icon': Icon(Icons.video_call_outlined, size: 30, color: Colors.white),
    },
    {
      'title': 'BookStore',
      'icon': Icon(Icons.book_online, size: 30, color: Colors.white),
    },
    {
      'title': 'Quiz',
      'icon': Icon(
        Icons.question_answer_outlined,
        size: 30,
        color: Colors.white,
      ),
    },
  ];



  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categoryItem.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.3,
      ),
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColor.appColor,
              child: categoryItem[index]['icon'],
            ),
            Text(
              categoryItem[index]['title'],
              style: TextStyle(color: AppColor.appColor),
            ),
          ],
        );
      },
    );
  }
}
