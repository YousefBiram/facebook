import 'package:face_app/app_color.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget{
  String postPhoto;

  PostWidget({required this.postPhoto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Container(
            color: AppColor.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/route1.png"),
                      ),
                      Column(
                        spacing: 7,
                        children: [
                          Text("route",style: TextStyle(fontSize: 16,color: AppColor.gray),),
                          Row(
                            spacing: 5,
                            children: [
                              Text("8h",style: TextStyle(fontSize: 12,color: AppColor.gray),),
                              Image.asset("assets/icons/earth.png")
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 285.0),
                        child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/points.png")),
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/$postPhoto.png"),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset("assets/icons/heart.png")),
                    IconButton(onPressed: (){}, icon: Image.asset("assets/icons/chat.png")),
                    IconButton(onPressed: (){}, icon: Image.asset("assets/icons/paper.png")),
                    Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/bookmark.png")),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: AppColor.gray,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}