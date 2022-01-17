import 'package:flutter/cupertino.dart';
import 'package:instagram/model/MStory.dart';
import 'package:faker/faker.dart';

class PStory with ChangeNotifier {
  List<MStory> _storys = [
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200/300?random=1",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200/300?random=2",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200/300?random=3",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200/300?random=4",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200/300?random=5",
        view: false),
  ];

  List<MStory> get storys => _storys;
}
