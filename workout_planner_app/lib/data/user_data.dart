import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/models/exercise_model.dart';
import 'package:workout_planner_app/models/user_model.dart';

User user = User(
  userID: 1, 
  fullName: "Haritha", 
  gender: "Male", 
  address: "111,Katuwaththawala,Ibbawala,Weligama", 
  age: 23, 
  description: "Fitness Enthusiast", 
  totalExerciseCompleted: 0, 
  totalEquipmentsHandOver: 0, 
  exerciseList: [
  Exercise(
      id: 0, 
      exerciseName: "Leg Raises", 
      exerciseImgURL: "assets/exercises/leg_raises.png", 
      numOfMin: 10, 
      exerciseDes:
          "Leg raises are a powerful core-strengthening exercise that focuses on the lower abdominal muscles. Begin by lying flat on your back with your legs extended and arms at your sides. Slowly lift your legs together without bending your knees until they are at a 90-degree angle from the floor. Engage your core throughout the movement. Then, gently lower your legs back down without letting them touch the ground. This movement improves core stability and helps build a stronger midsection. It's ideal for both beginners and advanced athletes looking to tone and tighten their lower abs.",
      completed: false), 
  Exercise(
      id: 1, 
      exerciseName: "Dumbbell Squat", 
      exerciseImgURL: "assets/exercises/dumbbell_squat.png", 
      numOfMin: 30,
      exerciseDes:
          "The dumbbell squat is a compound lower-body exercise that targets the quadriceps, hamstrings, glutes, and core. To perform it, stand upright with a dumbbell in each hand and your feet shoulder-width apart. Slowly bend your knees and lower your body into a squat position, keeping your chest lifted and your back straight. Your thighs should be parallel to the floor. Push through your heels to return to a standing position. This movement not only builds strength in the lower body but also improves posture, balance, and coordination, making it essential for full-body fitness routines.", 
      completed: false)
  ],
  equipmentList: [
  Equipment(
      id: 1, 
      equipmentName: "Resistance Bands", 
      equipmentDes: "Elastic bands used for resistance exercises.", 
      equipmentImgURL: "assets/equipments/checklist.png", 
      noOfMin: 20, 
      noOfCalaris: 150, 
      handOvered: false),
  Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDes: "A mat for practicing yoga and floor exercises.",
      equipmentImgURL: "assets/equipments/dumbbell.png",
      noOfMin: 60,
      noOfCalaris: 30,
      handOvered: false,
    )
], 
  favExerciseList: [
  Exercise(
      id: 2, 
      exerciseName: "Renegade Row", 
      exerciseImgURL: "assets/exercises/renegade_row.png", 
      numOfMin: 30, 
      exerciseDes:
          "Renegade rows are a challenging full-body movement that combines a plank with a dumbbell row, targeting the back, shoulders, and core. Begin in a high plank position, gripping a dumbbell in each hand with your feet shoulder-width apart. Engage your core and lift one dumbbell towards your waist while balancing on the opposite arm. Lower the dumbbell and repeat on the other side. Keep your hips stable and avoid rotating your torso. This exercise enhances upper-body strength, improves core stability, and trains your body to stay balanced and controlled during dynamic movements.",
      completed: false)
],
  favEquipmentList: [
  Equipment(
      id: 3, 
      equipmentName: "Dumbbells", 
      equipmentDes: "Weights used for strength training.", 
      equipmentImgURL: "assets/equipments/calendar.png", 
      noOfMin: 30, 
      noOfCalaris: 200, 
      handOvered: false)
]);