import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Study",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
