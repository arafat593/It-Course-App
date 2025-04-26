import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:it_course/core/image_path.dart';
import 'package:it_course/src/view/screen/auth/react.dart';

class MyCustomGridviewMentor extends StatelessWidget {

  final int? count;
  MyCustomGridviewMentor({super.key,this.count});

  List<Map<String, dynamic>> mentor = [
    {
      'title': 'walter',
      'subTitle': 'Flutter Developer',
      'avater': AssetImage(AppImages.walter,),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Sara',
      'subTitle': 'UI/UX Designer',
      'avater': AssetImage(AppImages.sara),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'John',
      'subTitle': 'React',
      'avater': AssetImage(AppImages.john),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Emma',
      'subTitle': 'Python',
      'avater': AssetImage(AppImages.emma),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Liam',
      'subTitle': 'Node Js',
      'avater': AssetImage(AppImages.liam),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Noah',
      'subTitle': 'Java Script',
      'avater': AssetImage(AppImages.noah),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'walter',
      'subTitle': 'Flutter Developer',
      'avater': AssetImage(AppImages.walter,),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Sara',
      'subTitle': 'UI/UX Designer',
      'avater': AssetImage(AppImages.sara),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'John',
      'subTitle': 'React',
      'avater': AssetImage(AppImages.john),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Emma',
      'subTitle': 'Python',
      'avater': AssetImage(AppImages.emma),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Liam',
      'subTitle': 'Node Js',
      'avater': AssetImage(AppImages.liam),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },
    {
      'title': 'Noah',
      'subTitle': 'Java Script',
      'avater': AssetImage(AppImages.noah),
      'star': Icon(Icons.star, color: Colors.amber, size: 12)
    },

  ];
  @override
  Widget build(BuildContext context) {
    final int finalCount = (count != null && count == 6) ? count! : mentor.length;
    return Expanded(
      child: GridView.builder(
        itemCount: finalCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ), itemBuilder: (context, index){
            return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CupertinoColors.systemGrey3,
                    spreadRadius: 2,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: CupertinoColors.extraLightBackgroundGray,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: mentor[index]['avater'],
                  ),
                  Text(mentor[index]['title'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                  Text(mentor[index]['subTitle'],style: TextStyle(fontSize: 12),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(5, (starIndex){
                        return mentor[index]['star'];
                      }),
                    ],
                  )
                ],
              ),
            );
      }),
    );
  }
}
