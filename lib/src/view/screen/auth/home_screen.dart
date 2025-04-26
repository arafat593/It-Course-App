import 'package:flutter/material.dart';
import 'package:it_course/core/image_path.dart';
import 'package:it_course/src/view/screen/auth/flutter.dart';
import 'package:it_course/src/view/screen/auth/java_script.dart';
import 'package:it_course/src/view/screen/auth/node_js.dart';
import 'package:it_course/src/view/screen/auth/python.dart';
import 'package:it_course/src/view/screen/auth/react.dart';
import 'package:it_course/src/view/screen/auth/ux_ui.dart';
import 'package:it_course/src/view/screen/widget/my_custom_bottom_navigator.dart';
import 'package:it_course/src/view/screen/widget/my_custom_courses_view.dart';
import 'package:it_course/src/view/screen/widget/my_custom_gridview.dart';

import '../widget/my_custom_app_bar.dart';
import '../widget/my_custom_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Map<String, dynamic>> courseList = [
  {
    'title': 'Java Script',
    'image': AppImages.javaScriptImage,
    'price': '\$5000',
    'link' : JavaScript(),
  },
  {
    'title': 'React',
    'image': AppImages.reactImage,
    'price': '\$5000',
    'link' : React(),
  },
  {
    'title': 'UX/UI',
    'image': AppImages.uxUiImage,
    'price': '\$5000',
    'link' : UxUi(),
  },
  {
    'title': 'Python',
    'image': AppImages.pythonImage,
    'price': '\$5000',
    'link' : Python(),
  },
  {
    'title': 'Flutter',
    'image': AppImages.flutterImage,
    'price': '\$5000',
    'link' : Flutter(),
  },
  {
    'title': 'Node js',
    'image': AppImages.nodeJsImage,
    'price': '\$5000',
    'link' : NodeJs(),
  },
];
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyCustomAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyCustomSearchBar(),
          ),
          MyCustomGridview(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular Courses',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: courseList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 0.1,
                childAspectRatio: 1.4
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> courseList[index]['link']));
                  },
                  child: MyCustomCoursesView(
                    width: 165,
                    height: 115,
                    image: courseList[index]['image'],
                    title: courseList[index]['title'],
                    price: courseList[index]['price'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
