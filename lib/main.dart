import 'package:flutter/material.dart';
import 'package:instagram/page/Dashboard.dart';
import 'package:instagram/provider/PStory.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Dashboard(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PStory()),
        ],
        child: Dashboard(),
      ),
    );
  }
}
