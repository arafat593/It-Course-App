import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_app_bar.dart';
import 'package:it_course/src/view/screen/widget/my_custom_bottom_navigator.dart';
import 'package:it_course/src/view/screen/widget/my_custom_gridview_mentor.dart';
import 'package:it_course/src/view/screen/widget/my_custom_search_bar.dart';

class ContentFile extends StatelessWidget {
  const ContentFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCustomSearchBar(),

            Text('Top Mentor', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            MyCustomGridviewMentor(count: 6),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('Mentor'),
            ),
            MyCustomGridviewMentor()
          ],
        ),
      ),
      // bottomNavigationBar: MyCustomBottomNavigator(),
    );
  }
}
