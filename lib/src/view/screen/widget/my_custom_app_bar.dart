import 'package:flutter/material.dart';
import 'package:it_course/src/view/screen/widget/my_custom_icon.dart';

import '../../../../core/image_path.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(AppImages.profileImage),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Al Arafat',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Let's learn something new",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          MyCustomIcon(icons: Icons.notifications_outlined),
        ],
      ),
    );
  }
}
