import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/equipment_data.dart';
import 'package:workout_planner_app/data/exercise_data.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/models/exercise_model.dart';
import 'package:workout_planner_app/widgets/addExerciseCard.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userData = user;
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

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
                Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: HMainColor,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddexErciseCard(
                        exsasiesTitle: exercise.exerciseName,
                        exsasiesImgURL: exercise.exerciseImgURL,
                        exsasiesMin: exercise.numOfMin.toString(),
                        isAdded: userData.exerciseList.contains(exercise),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExsasie(exercise);
                            } else {
                              userData.addExsasie(exercise);
                            }
                          });
                        },
                        isFav: userData.favExerciseList.contains(exercise),
                        toggleFav: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFav(exercise);
                            } else {
                              userData.addFav(exercise);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "All Equipment",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: HMainColor,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
