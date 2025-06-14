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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${title}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: HSubtitleColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            Image.asset(
              imgUrl,
              width: 127,
              fit: BoxFit.cover,
            ),  
          ],
        ),
      ),
    );
  }
}
