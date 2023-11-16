import 'package:flutter/material.dart';
import 'package:week4/components/itemview.dart';
import 'package:week4/pages/login.dart';
import 'package:week4/pages/page1.dart';
import 'package:week4/pages/registrationpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week4',
      home: ItemView(),
    );
  }
}
