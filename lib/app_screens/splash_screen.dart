import 'package:face_app/app_screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  static const String routeName = "splash_screen";
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(LoginScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            children: [
              Expanded(
                  flex: 8,
                  child: Image.asset("assets/images/facebook.png"),
              ),
              Expanded(flex: 1,child: Image.asset("assets/images/from_meta.png"),),
            ],
          )
        ],
      ),
    );
  }

}