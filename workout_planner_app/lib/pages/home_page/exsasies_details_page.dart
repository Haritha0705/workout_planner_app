import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/models/exercise_model.dart';
import 'package:workout_planner_app/widgets/ExerciseCard.dart';

class ExsasiesDetailsPage extends StatefulWidget {

  final String exsasiesTitle;
  final String exsasiesDes;
  final List<Exercise> exsasies;

  const ExsasiesDetailsPage({
    super.key, 
    required this.exsasiesTitle, 
    required this.exsasiesDes, 
    required this.exsasies});

  @override
  State<ExsasiesDetailsPage> createState() => _ExsasiesDetailsPageState();
}

class _ExsasiesDetailsPageState extends State<ExsasiesDetailsPage> {

  final DateFormat formmter = DateFormat('EEEE,MMMM');
  final DateFormat datFormmter = DateFormat('dd');

  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String formatDate = formmter.format(now);
    String dayFormat = datFormmter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "$formatDate $dayFormat",
              style: TextStyle(
                fontSize: 15,
                color: HSubtitleColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.exsasiesTitle,
              style: TextStyle(
                fontSize: 20,
                color: HMainColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HDefaultPadding),
          child: Column(
            children: [
              Text(
                widget.exsasiesDes,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HMainColor,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: HDefaultPadding,
                  mainAxisSpacing: HDefaultPadding,
                ),
                itemCount: widget.exsasies.length,
                itemBuilder: (context, index) {
                  Exercise exercise = widget.exsasies[index];
                  return ExerciseCard(
                    title: exercise.exerciseName,
                    imgUrl: exercise.exerciseImgURL,
                    discription: "${exercise.numOfMin}  mins of workout",
                    exerciseDes: exercise.exerciseDes,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}