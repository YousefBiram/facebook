import 'package:face_app/app_color.dart';
import 'package:flutter/material.dart';

class ViewStory extends StatelessWidget {
  String photo;
  String proPhoto;

  ViewStory({required this.photo,required this.proPhoto});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            width: 112,
            height: 180,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(15),
                  child: Image.asset(
                    "assets/images/$photo.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  margin: EdgeInsetsGeometry.all(7),
                  decoration: BoxDecoration(
                    color: AppColor.blue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/$proPhoto.png",
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
