import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/equipment_data.dart';
import 'package:workout_planner_app/data/exercise_data.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/models/exercise_model.dart';
import 'package:workout_planner_app/widgets/addEquipmentCard.dart';
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
      backgroundColor: HMainWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(HDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Exercise Section
              Text(
                "All Exercises",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: HMainColor,
                ),
              ),
              const SizedBox(height: 12),
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
                          userData.exerciseList.contains(exercise)
                              ? userData.removeExsasie(exercise)
                              : userData.addExsasie(exercise);
                        });
                      },
                      isFav: userData.favExerciseList.contains(exercise),
                      toggleFav: () {
                        setState(() {
                          userData.favExerciseList.contains(exercise)
                              ? userData.removeFav(exercise)
                              : userData.addFav(exercise);
                        });
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              // Equipment Section
              Text(
                "All Equipment",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: HMainColor,
                ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment equipment = equipmentList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: AddEquipmentCard(
                      equipmentName: equipment.equipmentName,
                      equipmentDes: equipment.equipmentDes,
                      equipmentImgURL: equipment.equipmentImgURL,
                      noOfMin: equipment.noOfMin,
                      noOfCalaris: equipment.noOfCalaris,
                      isAdded: userData.equipmentList.contains(equipment),
                      isFav: userData.favEquipmentList.contains(equipment),
                      toggleAddExercise: () {
                        setState(() {
                          userData.equipmentList.contains(equipment)
                              ? userData.removeEquipment(equipment)
                              : userData.addEquipment(equipment);
                        });
                      },
                      toggleFav: () {
                        setState(() {
                          userData.favEquipmentList.contains(equipment)
                              ? userData.removeFavEq(equipment)
                              : userData.addFavEq(equipment);
                        });
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
