import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomCourseDetailsAppbar extends StatelessWidget implements PreferredSize {
  final titleText;
  const MyCustomCourseDetailsAppbar({
    super.key, required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Row(
        children: [
          SizedBox(width: 8),
          CircleAvatar(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
      title: Text(titleText, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
