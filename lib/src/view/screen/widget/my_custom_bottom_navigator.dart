import 'package:flutter/material.dart';
import 'package:it_course/core/color.dart';
import 'package:it_course/src/view/screen/auth/content_file.dart';
import 'package:it_course/src/view/screen/auth/favorite_screen.dart';
import 'package:it_course/src/view/screen/auth/home_screen.dart';
import 'package:it_course/src/view/screen/auth/profile.dart';

class MyCustomBottomNavigator extends StatefulWidget {
  const MyCustomBottomNavigator({super.key});

  @override
  State<MyCustomBottomNavigator> createState() =>
      _MyCustomBottomNavigatorState();
}

class _MyCustomBottomNavigatorState extends State<MyCustomBottomNavigator> {
  int _currentIndex = 0;
  List pageLink = [
    HomeScreen(),
    ContentFile(),
    FavoriteScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageLink[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.appColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        iconSize: 20,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields_outlined), label: 'Content'),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
