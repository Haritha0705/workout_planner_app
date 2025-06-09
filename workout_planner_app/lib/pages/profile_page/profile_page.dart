import 'package:flutter/material.dart';
import 'package:workout_planner_app/const/responsive.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                Text("Profile Page")
                )
              ]),
          ),
        ),
      ),
    );
  }
}