import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/models/exercise_model.dart';

class User {
  final int userID;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;

  int totalExerciseCompleted = 0;
  int totalEquipmentsHandOver = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userID,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description, 
    required this.totalExerciseCompleted,
    required this.totalEquipmentsHandOver,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  void addExsasie(Exercise exercise) {
    exerciseList.add(exercise);
  }

  void removeExsasie(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  void addFav(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  void removeFav(Exercise exercise) {
    favExerciseList.remove(exercise);
  }
}