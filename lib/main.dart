import 'package:flutter/material.dart';
import 'package:proj_1/home.dart';
import 'package:proj_1/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'Home_page',
        routes:{
        'Home_page':(context) =>Home_page(),
          'Project_page':(context) =>Project_page(),
        },
    );
  }
}

