import 'package:flutter/cupertino.dart';
import 'package:instagram/model/MStory.dart';
import 'package:faker/faker.dart';

class PStory with ChangeNotifier {
  List<MStory> _storys = [
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200",
        view: false),
    MStory(
        name: faker.person.name(),
        image: "https://picsum.photos/200",
        view: false),
  ];

  List<MStory> get storys => _storys;
}
