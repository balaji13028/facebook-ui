import 'package:flutter/material.dart';
import 'package:flutter_tutorial/config/palette.dart';
import 'package:flutter_tutorial/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

