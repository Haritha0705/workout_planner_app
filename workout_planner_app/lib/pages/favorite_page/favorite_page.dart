import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HDefaultPadding),
            child: Column(children: [
              Center(
              child: 
              Text("Favorite Page")
              )]),
          ),
        ),
      ),
    );
  }
}
