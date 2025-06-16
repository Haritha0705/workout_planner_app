import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/user_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final userData = user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HDefaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello ${userData.fullName}",
                          style: TextStyle(
                            color: HMainColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image(
                      image: AssetImage('assets/myicon.png'),
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HCardButtonColor,
                    ),
                  child: Column(
                    children: [
                      // Text(
                      //   "Totel Miuites Spend: ${userData.calTottalMin()}",
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //     color: HGradientBottomColor,
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      // Text(
                      //   "Totel Exercise Completed: ${userData.totelExerciesCompleted.toString()}",
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     fontWeight: FontWeight.bold,
                      //     color: HMainColor,
                      //   ),
                      // ),
                      const SizedBox(height: 10),
                      // Text(
                      //   "Totel Equipment handOvered: ${userData.totelEqupmentHandOver.toString()}",
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     fontWeight: FontWeight.bold,
                      //     color: HMainColor,
                      //   ),
                      // ),
                    ],
                  ),
                )
              ]),
          ),
        ),
      ),
    );
  }
}