import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';
import 'package:instagram/widget/WTag.dart';

class WStatus extends StatelessWidget {
  String name;
  String caption;
  String image;
  String imageProfile;
  bool verified;

  WStatus({
    Key? key,
    this.image = "",
    this.imageProfile = "",
    this.name = "",
    this.caption = "",
    this.verified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imageProfile),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: Row(
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/images/verified.png",
                      width: 16,
                    )
                  ],
                )),
                Image.asset(
                  "assets/images/more.png",
                  width: 16,
                )
              ],
            ),
          ),
          Container(
            // color: Colors.amber,
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 3 / 4,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Image.asset(
                      "assets/images/love.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/comment.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/message.png",
                      width: 25,
                    ),
                  ],
                )),
                Image.asset(
                  "assets/images/bookmark.png",
                  width: 25,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(imageProfile),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Alfian Prisma Yopiangga",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "and",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "others",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "like this",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            width: MediaQuery.of(context).size.width,
            height: 28,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 15,
                ),
                WTag(status: true, text: "instagram"),
                WTag(status: false, text: "#instagood"),
                WTag(status: false, text: "#stayhome"),
                WTag(status: false, text: "#stayhealhty"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
            child: Text(
              caption,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: Text(
              "See all 35.073 comments",
              textAlign: TextAlign.start,
              style: TextStyle(color: CustomColors.greyDark, fontSize: 16),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "16 min ago",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: CustomColors.greyDark),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Translate",
                    textAlign: TextAlign.start,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
