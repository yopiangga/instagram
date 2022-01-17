import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';
import 'package:instagram/widget/ListStatus.dart';
import 'package:instagram/widget/ListStory.dart';
import 'package:instagram/widget/WBottomNavbar.dart';
import 'package:instagram/widget/WStory.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 5, vsync: this);
    controller.animateTo(0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 24,
              child: Image.asset(
                'assets/images/camera.png',
              ),
            ),
            Container(
              height: 29,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            Container(
              width: 30,
              height: 35,
              // height: double.infinity,
              // color: Colors.black45,
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    child: Container(
                      height: 24,
                      child: Image.asset(
                        'assets/images/message.png',
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              CustomColors.yellowDark,
                              CustomColors.orange
                            ]),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 1, color: CustomColors.grey))),
        child: Row(
          children: [
            WBottomNavBar(
              icon: "assets/images/home.png",
              notify: false,
              status: false,
            ),
            WBottomNavBar(
              icon: "assets/images/search.png",
              notify: false,
              status: false,
            ),
            WBottomNavBar(
              icon: "assets/images/camera_plus.png",
              notify: false,
              status: false,
            ),
            WBottomNavBar(
              icon: "assets/images/love.png",
              notify: false,
              status: false,
            ),
            WBottomNavBar(
              icon: "assets/images/circle.png",
              notify: true,
              status: false,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Container(
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: CustomColors.grey, width: 1))),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 10),
                      WStory(
                        name: "Your Story",
                        image: "https://picsum.photos/200/300?random=6",
                        view: false,
                      ),
                      SizedBox(width: 4),
                      VerticalDivider(
                        indent: 20,
                        endIndent: 40,
                      ),
                      SizedBox(width: 4),
                      ListStory()
                    ],
                  ),
                ),
                Container(
                  child: ListStatus(),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Center(
            child: Text("Page 2"),
          ),
          Center(
            child: Text("Page 3"),
          ),
          Center(
            child: Text("Page 4"),
          ),
          Center(
            child: Text("Page 5"),
          ),
        ],
      ),
    );
  }
}
