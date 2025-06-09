import 'package:flutter/material.dart';
import 'package:workout_planner_app/const/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HDefaultPadding),
            child: Column(children: [
              Text("Home Page")
            ]),
          ),
        ),
      ),
    );
  }
}