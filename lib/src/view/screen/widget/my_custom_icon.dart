import 'package:flutter/material.dart';

import '../../../../core/color.dart';

class MyCustomIcon extends StatelessWidget {
  final IconData icons;

  const MyCustomIcon({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.appColor,
      child: Icon(icons, size: 30, color: Colors.white),
    );
  }
}
