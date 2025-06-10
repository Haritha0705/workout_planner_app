import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/pages/add_new_page/add_new_page.dart';
import 'package:workout_planner_app/pages/favorite_page/favorite_page.dart';
import 'package:workout_planner_app/pages/home_page/home_page.dart';
import 'package:workout_planner_app/pages/profile_page/profile_page.dart';

void main() {
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
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workout Planner',
      theme: ThemeData(
        scaffoldBackgroundColor: HCardBackgroundColor,
        primaryColor: HMainColor,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(
            context,
          ).textTheme.apply(bodyColor: HMainColor, displayColor: HMainColor),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: HMainWhiteColor,
          selectedItemColor: HGradientBottomColor,
          unselectedItemColor: HSubtitleColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
