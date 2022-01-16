import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';
import 'package:instagram/widget/ListStory.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
              height: 26,
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
                      height: 26,
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
      body: Container(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ListStory()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
