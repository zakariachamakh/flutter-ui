import 'package:codecamp002/sing_in002/sing_in.dart';
import 'package:flutter/material.dart';

import 'sing_in003/sing_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter bootcamp',
      home: SingIn003(),
    );
  }
}
