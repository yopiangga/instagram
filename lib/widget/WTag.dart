import 'package:flutter/material.dart';
import 'package:instagram/custom/CustomColors.dart';

class WTag extends StatelessWidget {
  String text;
  bool status;
  WTag({Key? key, this.text = "", this.status = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: status ? Colors.black : CustomColors.light,
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14,
            color: status ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
