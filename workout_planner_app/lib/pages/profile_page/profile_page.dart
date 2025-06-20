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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 10),
                Text(
                  "Your Progress",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: HGradientBottomColor,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HCardButtonColor,
                    ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Stack(
                        alignment: Alignment.center,
                              children: [SizedBox(
                                  height: 100,
                                  width: 100,
                                  child:CircularProgressIndicator(
                                    value: 0.6, 
                                    backgroundColor: HCardButtonColor,
                                    valueColor: AlwaysStoppedAnimation(
                                      HMainPinkColor,
                                    ),
                                    strokeWidth: 16,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '720', // current value
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: HMainColor,
                                      ),
                                    ),
                                    Text(
                                      '/kCal', // total
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: HMainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                      const SizedBox(height: 30), 
                      Text(
                        "Total Minutes Spend: ${userData.calTottalMin()}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HGradientBottomColor,
                        ),
                      ),  
                      const SizedBox(height: 10),    
                      Text(
                        "Total Exercise Completed: ${userData.calTottalMin()}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HGradientBottomColor,
                        ),
                      ),
                      const SizedBox(height: 10), 
                      Text(
                        "Total Equipment Handover: ${userData.calTottalMin()}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HGradientBottomColor,
                        ),
                      ),
                      const SizedBox(height: 20),        
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