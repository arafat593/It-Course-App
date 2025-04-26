import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/image_path.dart';
import 'my_custom_button.dart';

class MyCustomCoursePage extends StatefulWidget {
  final String courseTitle;
  final String courseSummery;
  final String mentorName;
  final String titleImage;
  final String teacherImage;

  MyCustomCoursePage({
    super.key,
    required this.courseTitle,
    required this.courseSummery,
    required this.mentorName,
    required this.titleImage,
    required this.teacherImage,
  });
  @override
  State<MyCustomCoursePage> createState() => _MyCustomCoursePageState();
}

class _MyCustomCoursePageState extends State<MyCustomCoursePage> {
  bool islogin = true;
  List<String> videoList = [
    'Introduction',
    'Course model',
    'module 1',
    'module 2',
    'module 3',
    'module 4',
    'module 5',
    'module 6',
    'module 7',
    'module 8',
    'module 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.appColor,
            ),
            height: 150,
            width: double.infinity,
            child: Image.asset(widget.titleImage, scale: .3),
          ),
          SizedBox(height: 10),
          Text(
            widget.courseTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              widget.courseSummery,
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.teacherImage),
                  ),
                  SizedBox(width: 8),
                  RichText(
                    text: TextSpan(
                      text: 'Mentor',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: widget.mentorName,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text('No. Of Videos: ${videoList.length}'),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.greyBacground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomButton(
                  onTap: () {
                    setState(() {
                      islogin = true;
                    });
                  },
                  buttonText: 'Videos',
                  color:
                      islogin ? AppColor.appColor : AppColor.unselectedButton,
                  textColor: Colors.white,
                ),
                MyCustomButton(
                  onTap: () {
                    setState(() {
                      islogin = false;
                    });
                  },
                  buttonText: 'Recorded Session',
                  color:
                      !islogin ? AppColor.appColor : AppColor.unselectedButton,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: videoList.length,
                itemBuilder: (context, index){
              return ListTile(
                title: Text(videoList[index]),
              );
            }),
          )
        ],
      ),
    );
  }
}
