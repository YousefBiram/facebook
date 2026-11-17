import 'package:face_app/add_story.dart';
import 'package:face_app/app_color.dart';
import 'package:face_app/app_screens/view_story.dart';
import 'package:face_app/post_widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: ListView(
        children: [Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("assets/images/messi.png"),),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What’s in Your Mind?",
                        hintStyle: TextStyle(color: AppColor.gray,fontSize: 16,fontWeight: FontWeight(500))
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){},
                      icon: Image.asset("assets/images/photos.png",width: 40,height: 40,))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: AppColor.gray,
            ),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AddStory(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ViewStory(photo: "image6", proPhoto: "messi"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ViewStory(photo: "model1", proPhoto: "model2"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ViewStory(photo: "model3", proPhoto: "model4"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ViewStory(photo: "model2", proPhoto: "image5"),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: AppColor.gray,
            ),
            PostWidget(postPhoto: 'image1',),
            PostWidget(postPhoto: 'image2',),
            PostWidget(postPhoto: 'image3',),
            PostWidget(postPhoto: 'image4',),
            PostWidget(postPhoto: 'model2',),
            PostWidget(postPhoto: 'route',),
            PostWidget(postPhoto: 'model1',),
            PostWidget(postPhoto: 'model3',),
            PostWidget(postPhoto: 'model4',),

          ],
        ),
      ]),
    );
  }
}