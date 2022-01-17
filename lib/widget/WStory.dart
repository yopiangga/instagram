import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';

class WStory extends StatelessWidget {
  String name;
  String image;
  bool view;
  WStory({this.name = "", this.image = "", this.view = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      // color: Colors.amber,
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      CustomColors.yellow,
                      CustomColors.red,
                      CustomColors.purple
                    ])),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: CustomColors.light),
              child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: NetworkImage(image),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
