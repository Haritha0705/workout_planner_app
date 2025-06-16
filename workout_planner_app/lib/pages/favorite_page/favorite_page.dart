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
      backgroundColor: HCardBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(HDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Favorited Workouts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HGradientTopColor,
                ),
              ),
              const SizedBox(height: 20),

              /// Favorite Exercises Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userData.favExerciseList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: HDefaultPadding,
                  mainAxisSpacing: HDefaultPadding,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  Exercise favExercise = userData.favExerciseList[index];
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(HDefaultPadding / 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            favExercise.exerciseName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: HMainColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              favExercise.exerciseImgURL,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "${favExercise.numOfMin} Min Workout",
                            style: TextStyle(
                              fontSize: 14,
                              color: HMainPinkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),
              Text(
                "Your Favorited Equipment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HGradientTopColor,
                ),
              ),
              const SizedBox(height: 20),

              /// Favorite Equipment Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userData.favEquipmentList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: HDefaultPadding,
                  mainAxisSpacing: HDefaultPadding,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  Equipment favEquipment = userData.favEquipmentList[index];
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(HDefaultPadding / 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            favEquipment.equipmentName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: HMainColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              favEquipment.equipmentImgURL,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "${favEquipment.noOfMin} Min Workout",
                            style: TextStyle(
                              fontSize: 14,
                              color: HMainPinkColor,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            favEquipment.equipmentDes,
                            style: TextStyle(
                              fontSize: 13,
                              color: HSubtitleColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
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
