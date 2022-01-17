// library faker.example;

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/model/MStatus.dart';

class PStatus with ChangeNotifier {
  Faker fakerFa = Faker(provider: FakerDataProviderFa());
  List<MStatus> _status = [
    MStatus(
        name: faker.person.name(),
        imageProfile: "https://picsum.photos/200/300?random=1",
        verified: true,
        image: "https://picsum.photos/300/300?random=2",
        caption:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
    MStatus(
        name: faker.person.name(),
        imageProfile: "https://picsum.photos/200/300?random=3",
        verified: true,
        image: "https://picsum.photos/300/300?random=4",
        caption:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
    MStatus(
        name: faker.person.name(),
        imageProfile: "https://picsum.photos/200/300?random=5",
        verified: true,
        image: "https://picsum.photos/300/300?random=6",
        caption:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
  ];

  List<MStatus> get status => _status;
}
