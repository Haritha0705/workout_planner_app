import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/models/exercise_model.dart';
import 'package:workout_planner_app/widgets/profileCard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$formatDate $dayFormat",
                          style: TextStyle(
                            color: HSubtitleColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
                      const SizedBox(height: 30),
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
                        "Total Exercise Completed: ${userData.totalExerciseCompleted}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HGradientBottomColor,
                        ),
                      ),
                      const SizedBox(height: 10), 
                      Text(
                        "Total Equipment Handover: ${userData.totalEquipmentsHandOver}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HGradientBottomColor,
                        ),
                      ),
                      const SizedBox(height: 20),        
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Your Exercise",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: HMainColor,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userData.exerciseList.length,
                  itemBuilder: (context,index){
                    Exercise userExercise = userData.exerciseList[index];
                    return ProfileCard(
                      taskName: userExercise.exerciseName,
                      taskImg: userExercise.exerciseImgURL,
                      markAsDone: () {
                        setState(() {
                          userData.markExAsCompleted(userExercise.id);
                        });
                      },
                    );
                  }),
                const SizedBox(height: 10),
                Text(
                  "Your Equipment",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: HMainColor,
                  ),
                  textAlign: TextAlign.start,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userData.equipmentList.length,
                  itemBuilder: (context, index) {
                    Equipment useErequipment = userData.equipmentList[index];
                    return ProfileCard(
                      taskName: useErequipment.equipmentName,
                      taskImg: useErequipment.equipmentImgURL,
                      markAsDone: () {
                        setState(() {
                          userData.markExAsHandover(useErequipment.id);
                        });
                      },
                    );
                  },
                ),
                const SizedBox(height: 10),
              ]),
          ),
        ),
      ),
    );
  }
}