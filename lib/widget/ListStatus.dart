import 'package:flutter/material.dart';
import 'package:instagram/provider/PStatus.dart';
import 'package:instagram/widget/WStatus.dart';
import 'package:provider/provider.dart';

class ListStatus extends StatelessWidget {
  const ListStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = Provider.of<PStatus>(context);
    final allStatus = status.status;
    return Column(
      children: allStatus
          .map((e) => WStatus(
                image: e.image,
                imageProfile: e.imageProfile,
                name: e.name,
                caption: e.caption,
                verified: e.verified,
                location: e.location,
              ))
          .toList(),
    );
  }
}
