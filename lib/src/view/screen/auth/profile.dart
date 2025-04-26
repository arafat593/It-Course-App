import 'package:flutter/material.dart';
import 'package:it_course/core/image_path.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(AppImages.profile),
            ),
            SizedBox(height: 50,),
            Text('Mark Anderson',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.purpleAccent),),
            Text('Software Developer',style: TextStyle(fontSize: 20,color: Colors.blue),),
            Text('Computer Science and Engineering',style: TextStyle(fontSize: 15,),),
            Text('phone: 01234567890',),
            Text('Gmail: abcd1234@gmail.com')
          ],
        ),
      ),
    );
  }
}
