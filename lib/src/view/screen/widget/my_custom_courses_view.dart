
import 'package:flutter/material.dart';
import 'package:it_course/core/color.dart';

class MyCustomCoursesView extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final String image;
  final String price;

  const MyCustomCoursesView({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  State<MyCustomCoursesView> createState() => _MyCustomCoursesViewState();
}

class _MyCustomCoursesViewState extends State<MyCustomCoursesView> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 6,
                offset: Offset(4, 4),
                spreadRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: widget.height - 70,
                      width: widget.width - 100,
                      decoration: BoxDecoration(
                        color: AppColor.appColor,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(widget.image)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(widget.title),
                  ),
                ],
              ),
              Container(
                height: 25,
                width: widget.width,
                decoration: BoxDecoration(
                  color: AppColor.appColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Center(child: Text(widget.price, style: TextStyle(color: Colors.white,),)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
