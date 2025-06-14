import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';

class ExerciseCard extends StatelessWidget {

  final String title;
  final String imgUrl;
  final String discription;
  final String? exerciseDes;

  const ExerciseCard({
    super.key, 
  required this.title, 
  required this.imgUrl, 
  required this.discription, 
   this.exerciseDes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: HCardButtonColor, 
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(
              0xFFE0E0E0,
            ), 
            offset: Offset(0, 4),
            blurRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(HDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              width: 90,
              fit: BoxFit.cover,
            ),  
          ],
        ),
      ),
    );
  }
}
