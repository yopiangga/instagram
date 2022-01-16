import 'package:flutter/material.dart';
import 'package:instagram/provider/PStory.dart';
import 'package:instagram/widget/WStory.dart';
import 'package:provider/provider.dart';

class ListStory extends StatelessWidget {
  const ListStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storys = Provider.of<PStory>(context);
    final allstorys = storys.storys;
    return Row(
      children: allstorys
          .map((e) => WStory(
                name: e.name,
                image: e.image,
                view: e.view,
              ))
          .toList(),
    );
  }
}
