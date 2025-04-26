import 'package:flutter/material.dart';
import '../../../../core/color.dart';

class MyCustomSearchBar extends StatelessWidget {
  final bool isbool;

  const MyCustomSearchBar({super.key, this.isbool = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        if (isbool)
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.appColor,
            ),
            child: Icon(Icons.settings, color: Colors.white, size: 30),
          ),
      ],
    );
  }
}
