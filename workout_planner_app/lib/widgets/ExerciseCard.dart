import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';

class ExerciseCard extends StatelessWidget {

  final String title;
  final String imgUrl;
  final String discription;

  const ExerciseCard({
    super.key, 
  required this.title, 
  required this.imgUrl, 
  required this.discription});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      decoration: BoxDecoration(
        color: HCardButtonColor, // softer green tint
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(
              0xFFE0E0E0,
            ), // subtle grey shadow instead of pure white
            offset: Offset(0, 4),
            blurRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(HDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${title}",
              style: TextStyle(
                color: HSubtitleColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              imgUrl,
              width: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
                "${discription}",
                style: TextStyle(
                  color: HMainPinkColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
