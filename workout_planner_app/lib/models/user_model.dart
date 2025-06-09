class User {
  final int userID;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;

  int totalExerciseCompleted = 0;
  int totalEquipmentsHandOver = 0;

  User({
    required this.userID,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description, 
    required this.totalExerciseCompleted,
    required this.totalEquipmentsHandOver
  });
}