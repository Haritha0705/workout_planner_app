import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/data/equipment_data.dart';
import 'package:workout_planner_app/data/exercise_data.dart';
import 'package:workout_planner_app/data/user_data.dart';
import 'package:workout_planner_app/pages/home_page/equipment_details_page.dart';
import 'package:workout_planner_app/pages/home_page/exsasies_section_page.dart';
import 'package:workout_planner_app/widgets/exerciseCard.dart';
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
  final exsasiesList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList; 

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatDate = formmter.format(now);
    String dayFormat = dateFormater.format(now);

    return Scaffold(
      backgroundColor: HCardBackgroundColor, // Soft light background
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
                      Image(image: AssetImage('assets/myicon.png'),width: 55, fit: BoxFit.cover)
                  ],
                ),
                const SizedBox(height: 5),
                ProgesCard(val: 0.75),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 210,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [HGradientTopColor, HGradientBottomColor],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(HDefaultPadding),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                "Calories",
                                style: TextStyle(
                                  color: HMainWhiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                  Icons.local_fire_department,
                                  size: 50,
                                  color: HCardButtonColor,
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularProgressIndicator(
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
                                        color: HMainWhiteColor,
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
                            )

                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [HGradientTopColor, HGradientBottomColor],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Water",
                            style: TextStyle(
                              color: HMainWhiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Icon(Icons.water_drop,size: 70,
                          color: HCardButtonColor,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "4 L ",
                            style: TextStyle(
                              color: HMainWhiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExsasiesDetailsPage(exsasiesTitle: "Exercise", exsasiesDes: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.", exsasies: exsasiesList))
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HAccentGreenColor.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(HDefaultPadding*2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Exercises",
                                style: TextStyle(
                                  color: HMainWhiteColor,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.run_circle,
                                size: 100,
                                color: HGradientBottomColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10), 
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentDetailsPage(equipmentTitle: "Equipment", equipmentDes: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.", equipmentList: equipmentList)
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: HAccentGreenColor.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(HDefaultPadding * 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.fitness_center,
                                size: 100,
                                color: HGradientBottomColor,
                              ),
                              Text(
                                "Equipments",
                                style: TextStyle(
                                  color: HMainWhiteColor,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
