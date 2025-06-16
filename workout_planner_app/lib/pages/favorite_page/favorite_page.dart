import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/models/exercise_model.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

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
                Text(
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: HGradientTopColor,
                  ),
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: HDefaultPadding,
                    mainAxisSpacing: HDefaultPadding,
                  ),
                  itemCount: userData.favExerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise favExercise = userData.favExerciseList[index];
                    return Padding(
                      padding: const EdgeInsets.all(HDefaultPadding),
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              favExercise.exerciseName,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: HMainColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Image.asset(
                              favExercise.exerciseImgURL,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "${favExercise.numOfMin} Min Workout",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: HMainPinkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Text(
                  "Here are all your favorited equipment",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: HGradientTopColor,
                  ),
                ),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: HDefaultPadding,
                    mainAxisSpacing: HDefaultPadding,
                    childAspectRatio: 16 / 22,
                  ),
                  itemCount: userData.favExerciseList.length,
                  itemBuilder: (context, index) {
                    Equipment favEquipment = userData.favEquipmentList[index];
                    return Padding(
                      padding: const EdgeInsets.all(HDefaultPadding),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(HDefaultPadding),
                          child: Column(
                            children: [
                              Text(
                                favEquipment.equipmentName,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: HMainColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset(
                                favEquipment.equipmentImgURL,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${favEquipment.noOfMin} Min Workout",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: HMainPinkColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${favEquipment.equipmentDes}",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  color: HSubtitleColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ) 
              ]),
          ),
        ),
      ),
    );
  }
}
