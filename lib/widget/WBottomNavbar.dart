import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';

class WBottomNavBar extends StatelessWidget {
  String icon;
  bool status;
  bool notify;

  WBottomNavBar(
      {Key? key, this.icon = "", this.status = false, this.notify = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 5,
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 29,
            ),
            SizedBox(
              height: 5,
            ),
            notify
                ? Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: CustomColors.pink),
                  )
                : Container()
          ],
        ));
  }
}
