import 'package:flutter/material.dart';
import 'Choose.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XiaoHou TianTian Lian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LearningPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

