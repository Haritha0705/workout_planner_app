import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/widgets/ProgesCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateFormat formmter = DateFormat("EEEE,MMMM");
  final DateFormat dateFormater = DateFormat("dd");

  final userData = user;


  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String formatDate = formmter.format(now);
    String dayFormat = dateFormater.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("$formatDate $dayFormat",
              style: TextStyle(
                color: HSubtitleColor,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 5),
              Text(
                  "Hello ${userData.fullName}",
                  style: TextStyle(
                    color: HMainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 10), 
              ProgesCard(progessVal: 30,total: 100) ,
              const SizedBox(height: 10), 
            ]),
          ),
        ),
      ),
    );
  }
}