import 'package:face_app/app_color.dart';
import 'package:flutter/material.dart';

class AddStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: 112,
          height: 180,
          child: Column(
            children: [
              Container(
                width: 112,
                height: 124,
                child: Image.asset("assets/images/messi.png"),
              ),
              Container(
                width: 60,
                height: 50,
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Create a Story",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:110.0,bottom: 40,left: 42),
              child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset("assets/icons/add.png", width: 25, height: 25)),
            ),
          ],
        ),
      ],
    );
  }
}
