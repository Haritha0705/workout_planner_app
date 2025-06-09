import 'package:flutter/material.dart';
import 'package:workout_planner_app/pages/add_new_page/add_new_page.dart';
import 'package:workout_planner_app/pages/favorite_page/favorite_page.dart';
import 'package:workout_planner_app/pages/home_page/home_page.dart';
import 'package:workout_planner_app/pages/profile_page/profile_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AddNewPage(),
    FavoritePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workout Planner',
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: GoogleFonts
      ),
    );
  }
} 