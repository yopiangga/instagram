import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';
import 'package:instagram/widget/WTag.dart';

class WStatus extends StatelessWidget {
  String name;
  String caption;
  String image;
  String imageProfile;
  bool verified;
  String location;

  WStatus(
      {Key? key,
      this.image = "",
      this.imageProfile = "",
      this.name = "",
      this.caption = "",
      this.verified = false,
      this.location = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imageProfile),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/images/verified.png",
                            width: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        location,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/more.png",
                  width: 14,
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
                      width: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Image.asset(
                      "assets/images/comment.png",
                      width: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Image.asset(
                      "assets/images/message.png",
                      width: 24,
                    ),
                  ],
                )),
                Image.asset(
                  "assets/images/bookmark.png",
                  width: 24,
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
            margin: EdgeInsets.only(top: 10),
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
            margin: EdgeInsets.only(top: 10),
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
                    width: 10,
                  ),
                  Text(
                    "Translate",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
