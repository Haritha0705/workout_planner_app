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
      exerciseName: "Push-ups", 
      exerciseImgURL: "assets/exercises/cobra.png", 
      numOfMin: 10, 
      completed: false), 
  Exercise(
      id: 0, 
      exerciseName: "Squats", 
      exerciseImgURL: "assets/exercises/downward-facing.png", 
      numOfMin: 30, 
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
      exerciseName: "Plank", 
      exerciseImgURL: "assets/exercises/dragging.png", 
      numOfMin: 30, 
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