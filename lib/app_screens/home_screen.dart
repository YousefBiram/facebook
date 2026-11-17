import 'package:face_app/app_color.dart';
import 'package:flutter/material.dart';

import 'home_tab.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leadingWidth: 170,
          leading: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight(900),
              color: AppColor.blue,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/plus.png", width: 25, height: 40),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/search.png',
                width: 25,
                height: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/messenger.png",
                width: 25,
                height: 40,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: AppColor.blue,
            labelColor: AppColor.blue,
            unselectedLabelColor: AppColor.gray,
            tabs: [
              Tab(
                icon: ImageIcon(AssetImage('assets/icons/home.png'), size: 50),
              ),
              Tab(
                icon: ImageIcon(AssetImage('assets/icons/reels.png'), size: 50),
              ),
              Tab(
                icon: ImageIcon(AssetImage('assets/icons/store.png'), size: 50),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/icons/profile.png'),
                  size: 50,
                ),
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/icons/notification.png'),
                  size: 50,
                ),
              ),
              Tab(
                icon: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage("assets/images/messi.png"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            Center(child: Text("Reels", style: TextStyle(fontSize: 20))),
            Center(child: Text("Store", style: TextStyle(fontSize: 20))),
            Center(child: Text("Friends", style: TextStyle(fontSize: 20))),
            Center(child: Text("Notification", style: TextStyle(fontSize: 20))),
            Center(child: Text("Profile", style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
